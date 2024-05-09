import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'list_bluetooth_state.dart';

class ListBluetoothCubit extends Cubit<ListBluetoothState> {
  ListBluetoothCubit() : super(const ListBluetoothState());

  void init() async {
    try {
      final check = await FlutterBluePlus.isSupported;
      if (!check) return;

      await FlutterBluePlus.turnOn();
      FlutterBluePlus.scanResults.listen((event) {
        try {
          emit(state.copyWith(devices: event));
        } catch (e) {
          if (e is StateError) return;
          rethrow;
        }
      });
      final li = await FlutterBluePlus.systemDevices;
      emit(state.copyWith(connectedDevices: li));
    } catch (e) {
      rethrow;
    }
  }

  void scanDevice() async {
    try {
      FlutterBluePlus.startScan(timeout: const Duration(seconds: 5));

      await Future.delayed(const Duration(seconds: 10));
      FlutterBluePlus.stopScan();
    } catch (e) {
      rethrow;
    }
  }

  void connectToDevice(String remoteId) async {
    await BluetoothDevice.fromId(remoteId).connect();
  }
}
