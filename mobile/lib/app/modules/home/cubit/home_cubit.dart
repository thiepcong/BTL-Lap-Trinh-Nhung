import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void init() {
    //
  }

  void startListerner() async {
    if (state.currentDevice == null) {
      emit(state.copyWith(message: "Chưa kết nối với thiết bị nào!"));
      return;
    }
    final device = state.currentDevice!;
    List<BluetoothService> services = await device.discoverServices();
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
    // state.currentDevice?.
  }

  void setCurrentDevice(BluetoothDevice currentDevice) {
    emit(state.copyWith(currentDevice: currentDevice));
  }
}
