// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConvertState {
  double get pitch => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConvertStateCopyWith<ConvertState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertStateCopyWith<$Res> {
  factory $ConvertStateCopyWith(
          ConvertState value, $Res Function(ConvertState) then) =
      _$ConvertStateCopyWithImpl<$Res, ConvertState>;
  @useResult
  $Res call({double pitch, double speed, String? message, Error? error});
}

/// @nodoc
class _$ConvertStateCopyWithImpl<$Res, $Val extends ConvertState>
    implements $ConvertStateCopyWith<$Res> {
  _$ConvertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pitch = null,
    Object? speed = null,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConvertStateImplCopyWith<$Res>
    implements $ConvertStateCopyWith<$Res> {
  factory _$$ConvertStateImplCopyWith(
          _$ConvertStateImpl value, $Res Function(_$ConvertStateImpl) then) =
      __$$ConvertStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double pitch, double speed, String? message, Error? error});
}

/// @nodoc
class __$$ConvertStateImplCopyWithImpl<$Res>
    extends _$ConvertStateCopyWithImpl<$Res, _$ConvertStateImpl>
    implements _$$ConvertStateImplCopyWith<$Res> {
  __$$ConvertStateImplCopyWithImpl(
      _$ConvertStateImpl _value, $Res Function(_$ConvertStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pitch = null,
    Object? speed = null,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ConvertStateImpl(
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$ConvertStateImpl extends _ConvertState {
  const _$ConvertStateImpl(
      {this.pitch = 0, this.speed = 0, this.message, this.error})
      : super._();

  @override
  @JsonKey()
  final double pitch;
  @override
  @JsonKey()
  final double speed;
  @override
  final String? message;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ConvertState(pitch: $pitch, speed: $speed, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertStateImpl &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pitch, speed, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertStateImplCopyWith<_$ConvertStateImpl> get copyWith =>
      __$$ConvertStateImplCopyWithImpl<_$ConvertStateImpl>(this, _$identity);
}

abstract class _ConvertState extends ConvertState {
  const factory _ConvertState(
      {final double pitch,
      final double speed,
      final String? message,
      final Error? error}) = _$ConvertStateImpl;
  const _ConvertState._() : super._();

  @override
  double get pitch;
  @override
  double get speed;
  @override
  String? get message;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$ConvertStateImplCopyWith<_$ConvertStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
