import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bluetooth_state.freezed.dart';

@freezed
class ListBluetoothState with _$ListBluetoothState {
  const ListBluetoothState._();

  const factory ListBluetoothState({
    BluetoothDevice? currentDevice,
    @Default([]) List<String> bluetooths,
    @Default([]) List<ScanResult> devices,
    @Default([]) List<BluetoothDevice> connectedDevices,
    String? message,
    Error? error,
  }) = _ListBluetoothState;
}
