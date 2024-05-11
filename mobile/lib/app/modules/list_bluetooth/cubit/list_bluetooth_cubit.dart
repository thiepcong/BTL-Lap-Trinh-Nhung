import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' as ble;
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart'
    as classic;
import 'package:permission_handler/permission_handler.dart';
import 'list_bluetooth_state.dart';

class ListBluetoothCubit extends Cubit<ListBluetoothState> {
  ListBluetoothCubit() : super(const ListBluetoothState());

  void init() async {
    try {
      final check = await FlutterBluePlus.isSupported;
      if (!check) return;
      List<Permission> permissions = [
        Permission.location,
        Permission.bluetooth,
        Permission.bluetoothConnect,
        Permission.bluetoothScan,
      ];
      for (final i in permissions) {
        await i.request();
      }

      await FlutterBluePlus.turnOn();
      FlutterBluePlus.scanResults.listen((event) {
        try {
          emit(state.copyWith(bleDevices: event));
        } catch (e) {
          if (e is StateError) return;
          rethrow;
        }
      });
    } catch (e) {
      rethrow;
    }
  }

  void scanDeviceBLe() async {
    try {
      FlutterBluePlus.startScan(
        timeout: const Duration(seconds: 5),
        androidUsesFineLocation: true,
      );

      await Future.delayed(const Duration(seconds: 5));
      FlutterBluePlus.stopScan();
    } catch (e) {
      rethrow;
    }
  }

  void scanDeviceClassic() async {
    try {
      emit(state.copyWith(message: null));
      final check = await FlutterBluetoothSerial.instance.isAvailable;
      if (check == false) {
        emit(state.copyWith(message: "Đã có lỗi xảy ra"));
        return;
      }
      FlutterBluetoothSerial.instance.startDiscovery().listen((event) {
        try {
          List<classic.BluetoothDiscoveryResult> res =
              List.from(state.classicDevices as List);
          res.add(event);
          emit(state.copyWith(classicDevices: res));
        } catch (e) {
          log(e.toString());
        }
      });
    } catch (e) {
      rethrow;
    }
  }

  void connectToBleDevice(ble.BluetoothDevice device) {
    device.connect();
    emit(state.copyWith(bleDevices: device));
  }

  void connectToClassicDevice(classic.BluetoothDiscoveryResult result) {
    // device.
    emit(state.copyWith(classicDevices: result.device));
  }
}
