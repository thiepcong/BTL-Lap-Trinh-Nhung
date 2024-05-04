import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'list_bluetooth_state.dart';

class ListBluetoothCubit extends Cubit<ListBluetoothState> {
  ListBluetoothCubit() : super(const ListBluetoothState());

  void init() async {
    final check = await FlutterBluePlus.isSupported;
    if (!check) return;

    await FlutterBluePlus.turnOn();

    FlutterBluePlus.adapterState.listen((event) {
      log(event.toString());
    });

    await FlutterBluePlus.startScan();
    FlutterBluePlus.onScanResults.listen((event) {
      log(event.toString());
      try {
        emit(state.copyWith(
            bluetooths: event.map((e) => e.toString()).toList()));
      } catch (e) {
        return;
      }
    });
    await Future.delayed(const Duration(seconds: 20));
    FlutterBluePlus.stopScan();
  }
}
