import 'package:freezed_annotation/freezed_annotation.dart';

part 'convert_state.freezed.dart';

@freezed
class ConvertState with _$ConvertState {
  const ConvertState._();

  const factory ConvertState({
    @Default(1) double pitch,
    @Default(1) double speed,
    @Default(1) double volumn,
    String? message,
    Error? error,
  }) = _ConvertState;
}
