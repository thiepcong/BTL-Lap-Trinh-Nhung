import 'package:flutter_blue_plus/flutter_blue_plus.dart' as ble;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart'
    as classic;

part 'list_bluetooth_state.freezed.dart';

@freezed
class ListBluetoothState with _$ListBluetoothState {
  const ListBluetoothState._();

  const factory ListBluetoothState({
    ble.BluetoothDevice? currentBleDevice,
    classic.BluetoothDevice? currentClassicDevice,
    @Default([]) dynamic bleDevices,
    @Default([]) dynamic classicDevices,
    String? message,
    Error? error,
  }) = _ListBluetoothState;
}
