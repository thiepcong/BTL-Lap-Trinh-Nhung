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
  BluetoothDevice? get currentDevice => throw _privateConstructorUsedError;
  List<String> get bluetooths => throw _privateConstructorUsedError;
  List<ScanResult> get devices => throw _privateConstructorUsedError;
  List<BluetoothDevice> get connectedDevices =>
      throw _privateConstructorUsedError;
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
      {BluetoothDevice? currentDevice,
      List<String> bluetooths,
      List<ScanResult> devices,
      List<BluetoothDevice> connectedDevices,
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
    Object? currentDevice = freezed,
    Object? bluetooths = null,
    Object? devices = null,
    Object? connectedDevices = null,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      currentDevice: freezed == currentDevice
          ? _value.currentDevice
          : currentDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
      bluetooths: null == bluetooths
          ? _value.bluetooths
          : bluetooths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<ScanResult>,
      connectedDevices: null == connectedDevices
          ? _value.connectedDevices
          : connectedDevices // ignore: cast_nullable_to_non_nullable
              as List<BluetoothDevice>,
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
      {BluetoothDevice? currentDevice,
      List<String> bluetooths,
      List<ScanResult> devices,
      List<BluetoothDevice> connectedDevices,
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
    Object? currentDevice = freezed,
    Object? bluetooths = null,
    Object? devices = null,
    Object? connectedDevices = null,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ListBluetoothStateImpl(
      currentDevice: freezed == currentDevice
          ? _value.currentDevice
          : currentDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
      bluetooths: null == bluetooths
          ? _value._bluetooths
          : bluetooths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<ScanResult>,
      connectedDevices: null == connectedDevices
          ? _value._connectedDevices
          : connectedDevices // ignore: cast_nullable_to_non_nullable
              as List<BluetoothDevice>,
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
      {this.currentDevice,
      final List<String> bluetooths = const [],
      final List<ScanResult> devices = const [],
      final List<BluetoothDevice> connectedDevices = const [],
      this.message,
      this.error})
      : _bluetooths = bluetooths,
        _devices = devices,
        _connectedDevices = connectedDevices,
        super._();

  @override
  final BluetoothDevice? currentDevice;
  final List<String> _bluetooths;
  @override
  @JsonKey()
  List<String> get bluetooths {
    if (_bluetooths is EqualUnmodifiableListView) return _bluetooths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bluetooths);
  }

  final List<ScanResult> _devices;
  @override
  @JsonKey()
  List<ScanResult> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  final List<BluetoothDevice> _connectedDevices;
  @override
  @JsonKey()
  List<BluetoothDevice> get connectedDevices {
    if (_connectedDevices is EqualUnmodifiableListView)
      return _connectedDevices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedDevices);
  }

  @override
  final String? message;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ListBluetoothState(currentDevice: $currentDevice, bluetooths: $bluetooths, devices: $devices, connectedDevices: $connectedDevices, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBluetoothStateImpl &&
            (identical(other.currentDevice, currentDevice) ||
                other.currentDevice == currentDevice) &&
            const DeepCollectionEquality()
                .equals(other._bluetooths, _bluetooths) &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality()
                .equals(other._connectedDevices, _connectedDevices) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentDevice,
      const DeepCollectionEquality().hash(_bluetooths),
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_connectedDevices),
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
      {final BluetoothDevice? currentDevice,
      final List<String> bluetooths,
      final List<ScanResult> devices,
      final List<BluetoothDevice> connectedDevices,
      final String? message,
      final Error? error}) = _$ListBluetoothStateImpl;
  const _ListBluetoothState._() : super._();

  @override
  BluetoothDevice? get currentDevice;
  @override
  List<String> get bluetooths;
  @override
  List<ScanResult> get devices;
  @override
  List<BluetoothDevice> get connectedDevices;
  @override
  String? get message;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$ListBluetoothStateImplCopyWith<_$ListBluetoothStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
