import 'package:freezed_annotation/freezed_annotation.dart';

part 'convert_state.freezed.dart';

@freezed
class ConvertState with _$ConvertState {
  const ConvertState._();

  const factory ConvertState({
    @Default(0) double pitch,
    @Default(0) double speed,
    String? message,
    Error? error,
  }) = _ConvertState;
}
