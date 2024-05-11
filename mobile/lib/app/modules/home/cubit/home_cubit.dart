import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' as ble;
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart'
    as classic;
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void init() {
    //
  }

  void startListerner() async {
    if (state.currentBleDevice == null || state.currentClassicDevice == null) {
      emit(state.copyWith(message: "Chưa kết nối với thiết bị nào!"));
    }
    if (state.currentBleDevice != null) {
      final device = state.currentBleDevice!;
      List<ble.BluetoothService> services = await device.discoverServices();
      for (var service in services) {
        for (var characteristic in service.characteristics) {
          // if (characteristic.uuid.toString() == 'YOUR_CHARACTERISTIC_UUID') {
          characteristic.setNotifyValue(true);
          characteristic.onValueReceived.listen((event) {
            log(event.toString());
          });
          // }
        }
      }
    }
    if (state.currentClassicDevice != null) {
      classic.BluetoothConnection connection =
          await classic.BluetoothConnection.toAddress(
              state.currentClassicDevice!.address);
      log('Connected to the device');

      connection.input?.listen((Uint8List data) {
        log('Data incoming: ${ascii.decode(data)}');
        connection.output.add(data); // Sending data

        if (ascii.decode(data).contains('!')) {
          connection.finish();
          log('Disconnecting by local host');
        }
      }).onDone(() {
        log('Disconnected by remote request');
      });
    }
  }

  void setCurrentBleDevice(ble.BluetoothDevice currentDevice) {
    emit(state.copyWith(currentBleDevice: currentDevice));
  }

  void setCurrentClassicDevice(classic.BluetoothDevice currentDevice) {
    emit(state.copyWith(currentClassicDevice: currentDevice));
  }
}
