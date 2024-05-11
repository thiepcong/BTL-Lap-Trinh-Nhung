import 'package:flutter_blue_plus/flutter_blue_plus.dart' as ble;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart'
    as classic;

part 'convert_state.freezed.dart';

@freezed
class ConvertState with _$ConvertState {
  const ConvertState._();

  const factory ConvertState({
    ble.BluetoothDevice? currentBleDevice,
    classic.BluetoothDevice? currentClassicDevice,
    @Default(1) double pitch,
    @Default(1) double speed,
    @Default(1) double volumn,
    String? message,
    Error? error,
  }) = _ConvertState;
}
