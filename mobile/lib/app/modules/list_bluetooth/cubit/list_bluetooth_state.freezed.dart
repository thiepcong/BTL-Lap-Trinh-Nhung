// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_bluetooth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListBluetoothState {
  ble.BluetoothDevice? get currentBleDevice =>
      throw _privateConstructorUsedError;
  classic.BluetoothDevice? get currentClassicDevice =>
      throw _privateConstructorUsedError;
  dynamic get bleDevices => throw _privateConstructorUsedError;
  dynamic get classicDevices => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListBluetoothStateCopyWith<ListBluetoothState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBluetoothStateCopyWith<$Res> {
  factory $ListBluetoothStateCopyWith(
          ListBluetoothState value, $Res Function(ListBluetoothState) then) =
      _$ListBluetoothStateCopyWithImpl<$Res, ListBluetoothState>;
  @useResult
  $Res call(
      {ble.BluetoothDevice? currentBleDevice,
      classic.BluetoothDevice? currentClassicDevice,
      dynamic bleDevices,
      dynamic classicDevices,
      String? message,
      Error? error});
}

/// @nodoc
class _$ListBluetoothStateCopyWithImpl<$Res, $Val extends ListBluetoothState>
    implements $ListBluetoothStateCopyWith<$Res> {
  _$ListBluetoothStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBleDevice = freezed,
    Object? currentClassicDevice = freezed,
    Object? bleDevices = freezed,
    Object? classicDevices = freezed,
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
      bleDevices: freezed == bleDevices
          ? _value.bleDevices
          : bleDevices // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classicDevices: freezed == classicDevices
          ? _value.classicDevices
          : classicDevices // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$ListBluetoothStateImplCopyWith<$Res>
    implements $ListBluetoothStateCopyWith<$Res> {
  factory _$$ListBluetoothStateImplCopyWith(_$ListBluetoothStateImpl value,
          $Res Function(_$ListBluetoothStateImpl) then) =
      __$$ListBluetoothStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ble.BluetoothDevice? currentBleDevice,
      classic.BluetoothDevice? currentClassicDevice,
      dynamic bleDevices,
      dynamic classicDevices,
      String? message,
      Error? error});
}

/// @nodoc
class __$$ListBluetoothStateImplCopyWithImpl<$Res>
    extends _$ListBluetoothStateCopyWithImpl<$Res, _$ListBluetoothStateImpl>
    implements _$$ListBluetoothStateImplCopyWith<$Res> {
  __$$ListBluetoothStateImplCopyWithImpl(_$ListBluetoothStateImpl _value,
      $Res Function(_$ListBluetoothStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBleDevice = freezed,
    Object? currentClassicDevice = freezed,
    Object? bleDevices = freezed,
    Object? classicDevices = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ListBluetoothStateImpl(
      currentBleDevice: freezed == currentBleDevice
          ? _value.currentBleDevice
          : currentBleDevice // ignore: cast_nullable_to_non_nullable
              as ble.BluetoothDevice?,
      currentClassicDevice: freezed == currentClassicDevice
          ? _value.currentClassicDevice
          : currentClassicDevice // ignore: cast_nullable_to_non_nullable
              as classic.BluetoothDevice?,
      bleDevices: freezed == bleDevices
          ? _value.bleDevices
          : bleDevices // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classicDevices: freezed == classicDevices
          ? _value.classicDevices
          : classicDevices // ignore: cast_nullable_to_non_nullable
              as dynamic,
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

class _$ListBluetoothStateImpl extends _ListBluetoothState {
  const _$ListBluetoothStateImpl(
      {this.currentBleDevice,
      this.currentClassicDevice,
      this.bleDevices = const [],
      this.classicDevices = const [],
      this.message,
      this.error})
      : super._();

  @override
  final ble.BluetoothDevice? currentBleDevice;
  @override
  final classic.BluetoothDevice? currentClassicDevice;
  @override
  @JsonKey()
  final dynamic bleDevices;
  @override
  @JsonKey()
  final dynamic classicDevices;
  @override
  final String? message;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ListBluetoothState(currentBleDevice: $currentBleDevice, currentClassicDevice: $currentClassicDevice, bleDevices: $bleDevices, classicDevices: $classicDevices, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBluetoothStateImpl &&
            (identical(other.currentBleDevice, currentBleDevice) ||
                other.currentBleDevice == currentBleDevice) &&
            (identical(other.currentClassicDevice, currentClassicDevice) ||
                other.currentClassicDevice == currentClassicDevice) &&
            const DeepCollectionEquality()
                .equals(other.bleDevices, bleDevices) &&
            const DeepCollectionEquality()
                .equals(other.classicDevices, classicDevices) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentBleDevice,
      currentClassicDevice,
      const DeepCollectionEquality().hash(bleDevices),
      const DeepCollectionEquality().hash(classicDevices),
      message,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListBluetoothStateImplCopyWith<_$ListBluetoothStateImpl> get copyWith =>
      __$$ListBluetoothStateImplCopyWithImpl<_$ListBluetoothStateImpl>(
          this, _$identity);
}

abstract class _ListBluetoothState extends ListBluetoothState {
  const factory _ListBluetoothState(
      {final ble.BluetoothDevice? currentBleDevice,
      final classic.BluetoothDevice? currentClassicDevice,
      final dynamic bleDevices,
      final dynamic classicDevices,
      final String? message,
      final Error? error}) = _$ListBluetoothStateImpl;
  const _ListBluetoothState._() : super._();

  @override
  ble.BluetoothDevice? get currentBleDevice;
  @override
  classic.BluetoothDevice? get currentClassicDevice;
  @override
  dynamic get bleDevices;
  @override
  dynamic get classicDevices;
  @override
  String? get message;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$ListBluetoothStateImplCopyWith<_$ListBluetoothStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
