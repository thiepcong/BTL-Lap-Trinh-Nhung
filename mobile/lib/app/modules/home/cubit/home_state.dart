import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    BluetoothDevice? currentDevice,
    String? currentData,
    String? message,
    Error? error,
  }) = _HomeState;
}
