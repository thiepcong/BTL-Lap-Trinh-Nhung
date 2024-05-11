import 'package:flutter_blue_plus/flutter_blue_plus.dart' as ble;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart'
    as classic;

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    ble.BluetoothDevice? currentBleDevice,
    classic.BluetoothDevice? currentClassicDevice,
    String? currentData,
    String? message,
    Error? error,
  }) = _HomeState;
}
