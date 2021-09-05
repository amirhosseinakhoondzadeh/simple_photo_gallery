// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photo_listing_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoListingStateTearOff {
  const _$PhotoListingStateTearOff();

  _PhotoListingState call(
      {bool isLoading = false,
      bool isFailure = false,
      Failure? failure,
      List<PhotoEntity> items = const <PhotoEntity>[]}) {
    return _PhotoListingState(
      isLoading: isLoading,
      isFailure: isFailure,
      failure: failure,
      items: items,
    );
  }
}

/// @nodoc
const $PhotoListingState = _$PhotoListingStateTearOff();

/// @nodoc
mixin _$PhotoListingState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  List<PhotoEntity> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoListingStateCopyWith<PhotoListingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListingStateCopyWith<$Res> {
  factory $PhotoListingStateCopyWith(
          PhotoListingState value, $Res Function(PhotoListingState) then) =
      _$PhotoListingStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isFailure,
      Failure? failure,
      List<PhotoEntity> items});
}

/// @nodoc
class _$PhotoListingStateCopyWithImpl<$Res>
    implements $PhotoListingStateCopyWith<$Res> {
  _$PhotoListingStateCopyWithImpl(this._value, this._then);

  final PhotoListingState _value;
  // ignore: unused_field
  final $Res Function(PhotoListingState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFailure = freezed,
    Object? failure = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: isFailure == freezed
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
    ));
  }
}

/// @nodoc
abstract class _$PhotoListingStateCopyWith<$Res>
    implements $PhotoListingStateCopyWith<$Res> {
  factory _$PhotoListingStateCopyWith(
          _PhotoListingState value, $Res Function(_PhotoListingState) then) =
      __$PhotoListingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isFailure,
      Failure? failure,
      List<PhotoEntity> items});
}

/// @nodoc
class __$PhotoListingStateCopyWithImpl<$Res>
    extends _$PhotoListingStateCopyWithImpl<$Res>
    implements _$PhotoListingStateCopyWith<$Res> {
  __$PhotoListingStateCopyWithImpl(
      _PhotoListingState _value, $Res Function(_PhotoListingState) _then)
      : super(_value, (v) => _then(v as _PhotoListingState));

  @override
  _PhotoListingState get _value => super._value as _PhotoListingState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFailure = freezed,
    Object? failure = freezed,
    Object? items = freezed,
  }) {
    return _then(_PhotoListingState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: isFailure == freezed
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
    ));
  }
}

/// @nodoc

class _$_PhotoListingState implements _PhotoListingState {
  const _$_PhotoListingState(
      {this.isLoading = false,
      this.isFailure = false,
      this.failure,
      this.items = const <PhotoEntity>[]});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isFailure;
  @override
  final Failure? failure;
  @JsonKey(defaultValue: const <PhotoEntity>[])
  @override
  final List<PhotoEntity> items;

  @override
  String toString() {
    return 'PhotoListingState(isLoading: $isLoading, isFailure: $isFailure, failure: $failure, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoListingState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$PhotoListingStateCopyWith<_PhotoListingState> get copyWith =>
      __$PhotoListingStateCopyWithImpl<_PhotoListingState>(this, _$identity);
}

abstract class _PhotoListingState implements PhotoListingState {
  const factory _PhotoListingState(
      {bool isLoading,
      bool isFailure,
      Failure? failure,
      List<PhotoEntity> items}) = _$_PhotoListingState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isFailure => throw _privateConstructorUsedError;
  @override
  Failure? get failure => throw _privateConstructorUsedError;
  @override
  List<PhotoEntity> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoListingStateCopyWith<_PhotoListingState> get copyWith =>
      throw _privateConstructorUsedError;
}
