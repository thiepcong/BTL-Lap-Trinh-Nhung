import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bluetooth_state.freezed.dart';

@freezed
class ListBluetoothState with _$ListBluetoothState {
  const ListBluetoothState._();

  const factory ListBluetoothState({
    @Default([]) List<String> bluetooths,
    String? message,
    Error? error,
  }) = _ListBluetoothState;
}
