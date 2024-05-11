// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  ble.BluetoothDevice? get currentBleDevice =>
      throw _privateConstructorUsedError;
  classic.BluetoothDevice? get currentClassicDevice =>
      throw _privateConstructorUsedError;
  String? get currentData => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ble.BluetoothDevice? currentBleDevice,
      classic.BluetoothDevice? currentClassicDevice,
      String? currentData,
      String? message,
      Error? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBleDevice = freezed,
    Object? currentClassicDevice = freezed,
    Object? currentData = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      currentBleDevice: freezed == currentBleDevice
          ? _value.currentBleDevice
          : currentBleDevice // ignore: cast_nullable_to_non_nullable
              as ble.BluetoothDevice?,
      currentClassicDevice: freezed == currentClassicDevice
          ? _value.currentClassicDevice
          : currentClassicDevice // ignore: cast_nullable_to_non_nullable
              as classic.BluetoothDevice?,
      currentData: freezed == currentData
          ? _value.currentData
          : currentData // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ble.BluetoothDevice? currentBleDevice,
      classic.BluetoothDevice? currentClassicDevice,
      String? currentData,
      String? message,
      Error? error});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBleDevice = freezed,
    Object? currentClassicDevice = freezed,
    Object? currentData = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$HomeStateImpl(
      currentBleDevice: freezed == currentBleDevice
          ? _value.currentBleDevice
          : currentBleDevice // ignore: cast_nullable_to_non_nullable
              as ble.BluetoothDevice?,
      currentClassicDevice: freezed == currentClassicDevice
          ? _value.currentClassicDevice
          : currentClassicDevice // ignore: cast_nullable_to_non_nullable
              as classic.BluetoothDevice?,
      currentData: freezed == currentData
          ? _value.currentData
          : currentData // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.currentBleDevice,
      this.currentClassicDevice,
      this.currentData,
      this.message,
      this.error})
      : super._();

  @override
  final ble.BluetoothDevice? currentBleDevice;
  @override
  final classic.BluetoothDevice? currentClassicDevice;
  @override
  final String? currentData;
  @override
  final String? message;
  @override
  final Error? error;

  @override
  String toString() {
    return 'HomeState(currentBleDevice: $currentBleDevice, currentClassicDevice: $currentClassicDevice, currentData: $currentData, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.currentBleDevice, currentBleDevice) ||
                other.currentBleDevice == currentBleDevice) &&
            (identical(other.currentClassicDevice, currentClassicDevice) ||
                other.currentClassicDevice == currentClassicDevice) &&
            (identical(other.currentData, currentData) ||
                other.currentData == currentData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentBleDevice,
      currentClassicDevice, currentData, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final ble.BluetoothDevice? currentBleDevice,
      final classic.BluetoothDevice? currentClassicDevice,
      final String? currentData,
      final String? message,
      final Error? error}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  ble.BluetoothDevice? get currentBleDevice;
  @override
  classic.BluetoothDevice? get currentClassicDevice;
  @override
  String? get currentData;
  @override
  String? get message;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
