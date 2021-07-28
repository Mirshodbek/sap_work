// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  StatusPaymentState status(
      {required String title, required int sum, required int total}) {
    return StatusPaymentState(
      title: title,
      sum: sum,
      total: total,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  String get title => throw _privateConstructorUsedError;
  int get sum => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int sum, int total) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int sum, int total)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusPaymentState value) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusPaymentState value)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
  $Res call({String title, int sum, int total});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? sum = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $StatusPaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory $StatusPaymentStateCopyWith(
          StatusPaymentState value, $Res Function(StatusPaymentState) then) =
      _$StatusPaymentStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, int sum, int total});
}

/// @nodoc
class _$StatusPaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $StatusPaymentStateCopyWith<$Res> {
  _$StatusPaymentStateCopyWithImpl(
      StatusPaymentState _value, $Res Function(StatusPaymentState) _then)
      : super(_value, (v) => _then(v as StatusPaymentState));

  @override
  StatusPaymentState get _value => super._value as StatusPaymentState;

  @override
  $Res call({
    Object? title = freezed,
    Object? sum = freezed,
    Object? total = freezed,
  }) {
    return _then(StatusPaymentState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatusPaymentState implements StatusPaymentState {
  const _$StatusPaymentState(
      {required this.title, required this.sum, required this.total});

  @override
  final String title;
  @override
  final int sum;
  @override
  final int total;

  @override
  String toString() {
    return 'PaymentState.status(title: $title, sum: $sum, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusPaymentState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.sum, sum) ||
                const DeepCollectionEquality().equals(other.sum, sum)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(sum) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  $StatusPaymentStateCopyWith<StatusPaymentState> get copyWith =>
      _$StatusPaymentStateCopyWithImpl<StatusPaymentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int sum, int total) status,
  }) {
    return status(title, sum, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int sum, int total)? status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(title, sum, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusPaymentState value) status,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusPaymentState value)? status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class StatusPaymentState implements PaymentState {
  const factory StatusPaymentState(
      {required String title,
      required int sum,
      required int total}) = _$StatusPaymentState;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get sum => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StatusPaymentStateCopyWith<StatusPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
