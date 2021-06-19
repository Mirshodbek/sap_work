// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pay_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PayStateTearOff {
  const _$PayStateTearOff();

  _LoadingPayState loading() {
    return const _LoadingPayState();
  }

  _LoadedPayState loaded(
      {required bool isPayed,
      required bool nextStep,
      required int sum,
      required int count}) {
    return _LoadedPayState(
      isPayed: isPayed,
      nextStep: nextStep,
      sum: sum,
      count: count,
    );
  }
}

/// @nodoc
const $PayState = _$PayStateTearOff();

/// @nodoc
mixin _$PayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isPayed, bool nextStep, int sum, int count)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isPayed, bool nextStep, int sum, int count)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_LoadedPayState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_LoadedPayState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayStateCopyWith<$Res> {
  factory $PayStateCopyWith(PayState value, $Res Function(PayState) then) =
      _$PayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PayStateCopyWithImpl<$Res> implements $PayStateCopyWith<$Res> {
  _$PayStateCopyWithImpl(this._value, this._then);

  final PayState _value;
  // ignore: unused_field
  final $Res Function(PayState) _then;
}

/// @nodoc
abstract class _$LoadingPayStateCopyWith<$Res> {
  factory _$LoadingPayStateCopyWith(
          _LoadingPayState value, $Res Function(_LoadingPayState) then) =
      __$LoadingPayStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingPayStateCopyWithImpl<$Res> extends _$PayStateCopyWithImpl<$Res>
    implements _$LoadingPayStateCopyWith<$Res> {
  __$LoadingPayStateCopyWithImpl(
      _LoadingPayState _value, $Res Function(_LoadingPayState) _then)
      : super(_value, (v) => _then(v as _LoadingPayState));

  @override
  _LoadingPayState get _value => super._value as _LoadingPayState;
}

/// @nodoc

class _$_LoadingPayState implements _LoadingPayState {
  const _$_LoadingPayState();

  @override
  String toString() {
    return 'PayState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingPayState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isPayed, bool nextStep, int sum, int count)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isPayed, bool nextStep, int sum, int count)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_LoadedPayState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_LoadedPayState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPayState implements PayState {
  const factory _LoadingPayState() = _$_LoadingPayState;
}

/// @nodoc
abstract class _$LoadedPayStateCopyWith<$Res> {
  factory _$LoadedPayStateCopyWith(
          _LoadedPayState value, $Res Function(_LoadedPayState) then) =
      __$LoadedPayStateCopyWithImpl<$Res>;
  $Res call({bool isPayed, bool nextStep, int sum, int count});
}

/// @nodoc
class __$LoadedPayStateCopyWithImpl<$Res> extends _$PayStateCopyWithImpl<$Res>
    implements _$LoadedPayStateCopyWith<$Res> {
  __$LoadedPayStateCopyWithImpl(
      _LoadedPayState _value, $Res Function(_LoadedPayState) _then)
      : super(_value, (v) => _then(v as _LoadedPayState));

  @override
  _LoadedPayState get _value => super._value as _LoadedPayState;

  @override
  $Res call({
    Object? isPayed = freezed,
    Object? nextStep = freezed,
    Object? sum = freezed,
    Object? count = freezed,
  }) {
    return _then(_LoadedPayState(
      isPayed: isPayed == freezed
          ? _value.isPayed
          : isPayed // ignore: cast_nullable_to_non_nullable
              as bool,
      nextStep: nextStep == freezed
          ? _value.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadedPayState implements _LoadedPayState {
  const _$_LoadedPayState(
      {required this.isPayed,
      required this.nextStep,
      required this.sum,
      required this.count});

  @override
  final bool isPayed;
  @override
  final bool nextStep;
  @override
  final int sum;
  @override
  final int count;

  @override
  String toString() {
    return 'PayState.loaded(isPayed: $isPayed, nextStep: $nextStep, sum: $sum, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedPayState &&
            (identical(other.isPayed, isPayed) ||
                const DeepCollectionEquality()
                    .equals(other.isPayed, isPayed)) &&
            (identical(other.nextStep, nextStep) ||
                const DeepCollectionEquality()
                    .equals(other.nextStep, nextStep)) &&
            (identical(other.sum, sum) ||
                const DeepCollectionEquality().equals(other.sum, sum)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPayed) ^
      const DeepCollectionEquality().hash(nextStep) ^
      const DeepCollectionEquality().hash(sum) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$LoadedPayStateCopyWith<_LoadedPayState> get copyWith =>
      __$LoadedPayStateCopyWithImpl<_LoadedPayState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isPayed, bool nextStep, int sum, int count)
        loaded,
  }) {
    return loaded(isPayed, nextStep, sum, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isPayed, bool nextStep, int sum, int count)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isPayed, nextStep, sum, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_LoadedPayState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_LoadedPayState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedPayState implements PayState {
  const factory _LoadedPayState(
      {required bool isPayed,
      required bool nextStep,
      required int sum,
      required int count}) = _$_LoadedPayState;

  bool get isPayed => throw _privateConstructorUsedError;
  bool get nextStep => throw _privateConstructorUsedError;
  int get sum => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedPayStateCopyWith<_LoadedPayState> get copyWith =>
      throw _privateConstructorUsedError;
}
