// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feedbacks_btn_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedbacksBtnStateTearOff {
  const _$FeedbacksBtnStateTearOff();

  EmptyFeedbacksBtnState empty() {
    return const EmptyFeedbacksBtnState();
  }

  PaymentFeedbacksBtnState payment() {
    return const PaymentFeedbacksBtnState();
  }

  ResumeFeedbacksBtnState resume({required FeedbackVacancy resume}) {
    return ResumeFeedbacksBtnState(
      resume: resume,
    );
  }

  SumFeedbacksBtnState sum(
      {required String title, required int sum, required int total}) {
    return SumFeedbacksBtnState(
      title: title,
      sum: sum,
      total: total,
    );
  }
}

/// @nodoc
const $FeedbacksBtnState = _$FeedbacksBtnStateTearOff();

/// @nodoc
mixin _$FeedbacksBtnState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(FeedbackVacancy resume) resume,
    required TResult Function(String title, int sum, int total) sum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(FeedbackVacancy resume)? resume,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ResumeFeedbacksBtnState value) resume,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ResumeFeedbacksBtnState value)? resume,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksBtnStateCopyWith<$Res> {
  factory $FeedbacksBtnStateCopyWith(
          FeedbacksBtnState value, $Res Function(FeedbacksBtnState) then) =
      _$FeedbacksBtnStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $FeedbacksBtnStateCopyWith<$Res> {
  _$FeedbacksBtnStateCopyWithImpl(this._value, this._then);

  final FeedbacksBtnState _value;
  // ignore: unused_field
  final $Res Function(FeedbacksBtnState) _then;
}

/// @nodoc
abstract class $EmptyFeedbacksBtnStateCopyWith<$Res> {
  factory $EmptyFeedbacksBtnStateCopyWith(EmptyFeedbacksBtnState value,
          $Res Function(EmptyFeedbacksBtnState) then) =
      _$EmptyFeedbacksBtnStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyFeedbacksBtnStateCopyWithImpl<$Res>
    extends _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $EmptyFeedbacksBtnStateCopyWith<$Res> {
  _$EmptyFeedbacksBtnStateCopyWithImpl(EmptyFeedbacksBtnState _value,
      $Res Function(EmptyFeedbacksBtnState) _then)
      : super(_value, (v) => _then(v as EmptyFeedbacksBtnState));

  @override
  EmptyFeedbacksBtnState get _value => super._value as EmptyFeedbacksBtnState;
}

/// @nodoc

class _$EmptyFeedbacksBtnState implements EmptyFeedbacksBtnState {
  const _$EmptyFeedbacksBtnState();

  @override
  String toString() {
    return 'FeedbacksBtnState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyFeedbacksBtnState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(FeedbackVacancy resume) resume,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(FeedbackVacancy resume)? resume,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ResumeFeedbacksBtnState value) resume,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ResumeFeedbacksBtnState value)? resume,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyFeedbacksBtnState implements FeedbacksBtnState {
  const factory EmptyFeedbacksBtnState() = _$EmptyFeedbacksBtnState;
}

/// @nodoc
abstract class $PaymentFeedbacksBtnStateCopyWith<$Res> {
  factory $PaymentFeedbacksBtnStateCopyWith(PaymentFeedbacksBtnState value,
          $Res Function(PaymentFeedbacksBtnState) then) =
      _$PaymentFeedbacksBtnStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentFeedbacksBtnStateCopyWithImpl<$Res>
    extends _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $PaymentFeedbacksBtnStateCopyWith<$Res> {
  _$PaymentFeedbacksBtnStateCopyWithImpl(PaymentFeedbacksBtnState _value,
      $Res Function(PaymentFeedbacksBtnState) _then)
      : super(_value, (v) => _then(v as PaymentFeedbacksBtnState));

  @override
  PaymentFeedbacksBtnState get _value =>
      super._value as PaymentFeedbacksBtnState;
}

/// @nodoc

class _$PaymentFeedbacksBtnState implements PaymentFeedbacksBtnState {
  const _$PaymentFeedbacksBtnState();

  @override
  String toString() {
    return 'FeedbacksBtnState.payment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentFeedbacksBtnState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(FeedbackVacancy resume) resume,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return payment();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(FeedbackVacancy resume)? resume,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ResumeFeedbacksBtnState value) resume,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ResumeFeedbacksBtnState value)? resume,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }
}

abstract class PaymentFeedbacksBtnState implements FeedbacksBtnState {
  const factory PaymentFeedbacksBtnState() = _$PaymentFeedbacksBtnState;
}

/// @nodoc
abstract class $ResumeFeedbacksBtnStateCopyWith<$Res> {
  factory $ResumeFeedbacksBtnStateCopyWith(ResumeFeedbacksBtnState value,
          $Res Function(ResumeFeedbacksBtnState) then) =
      _$ResumeFeedbacksBtnStateCopyWithImpl<$Res>;
  $Res call({FeedbackVacancy resume});
}

/// @nodoc
class _$ResumeFeedbacksBtnStateCopyWithImpl<$Res>
    extends _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $ResumeFeedbacksBtnStateCopyWith<$Res> {
  _$ResumeFeedbacksBtnStateCopyWithImpl(ResumeFeedbacksBtnState _value,
      $Res Function(ResumeFeedbacksBtnState) _then)
      : super(_value, (v) => _then(v as ResumeFeedbacksBtnState));

  @override
  ResumeFeedbacksBtnState get _value => super._value as ResumeFeedbacksBtnState;

  @override
  $Res call({
    Object? resume = freezed,
  }) {
    return _then(ResumeFeedbacksBtnState(
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as FeedbackVacancy,
    ));
  }
}

/// @nodoc

class _$ResumeFeedbacksBtnState implements ResumeFeedbacksBtnState {
  const _$ResumeFeedbacksBtnState({required this.resume});

  @override
  final FeedbackVacancy resume;

  @override
  String toString() {
    return 'FeedbacksBtnState.resume(resume: $resume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResumeFeedbacksBtnState &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(resume);

  @JsonKey(ignore: true)
  @override
  $ResumeFeedbacksBtnStateCopyWith<ResumeFeedbacksBtnState> get copyWith =>
      _$ResumeFeedbacksBtnStateCopyWithImpl<ResumeFeedbacksBtnState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(FeedbackVacancy resume) resume,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return resume(this.resume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(FeedbackVacancy resume)? resume,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this.resume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ResumeFeedbacksBtnState value) resume,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ResumeFeedbacksBtnState value)? resume,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class ResumeFeedbacksBtnState implements FeedbacksBtnState {
  const factory ResumeFeedbacksBtnState({required FeedbackVacancy resume}) =
      _$ResumeFeedbacksBtnState;

  FeedbackVacancy get resume => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeFeedbacksBtnStateCopyWith<ResumeFeedbacksBtnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SumFeedbacksBtnStateCopyWith<$Res> {
  factory $SumFeedbacksBtnStateCopyWith(SumFeedbacksBtnState value,
          $Res Function(SumFeedbacksBtnState) then) =
      _$SumFeedbacksBtnStateCopyWithImpl<$Res>;
  $Res call({String title, int sum, int total});
}

/// @nodoc
class _$SumFeedbacksBtnStateCopyWithImpl<$Res>
    extends _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $SumFeedbacksBtnStateCopyWith<$Res> {
  _$SumFeedbacksBtnStateCopyWithImpl(
      SumFeedbacksBtnState _value, $Res Function(SumFeedbacksBtnState) _then)
      : super(_value, (v) => _then(v as SumFeedbacksBtnState));

  @override
  SumFeedbacksBtnState get _value => super._value as SumFeedbacksBtnState;

  @override
  $Res call({
    Object? title = freezed,
    Object? sum = freezed,
    Object? total = freezed,
  }) {
    return _then(SumFeedbacksBtnState(
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

class _$SumFeedbacksBtnState implements SumFeedbacksBtnState {
  const _$SumFeedbacksBtnState(
      {required this.title, required this.sum, required this.total});

  @override
  final String title;
  @override
  final int sum;
  @override
  final int total;

  @override
  String toString() {
    return 'FeedbacksBtnState.sum(title: $title, sum: $sum, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SumFeedbacksBtnState &&
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
  $SumFeedbacksBtnStateCopyWith<SumFeedbacksBtnState> get copyWith =>
      _$SumFeedbacksBtnStateCopyWithImpl<SumFeedbacksBtnState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(FeedbackVacancy resume) resume,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return sum(title, this.sum, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(FeedbackVacancy resume)? resume,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) {
    if (sum != null) {
      return sum(title, this.sum, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ResumeFeedbacksBtnState value) resume,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return sum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ResumeFeedbacksBtnState value)? resume,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) {
    if (sum != null) {
      return sum(this);
    }
    return orElse();
  }
}

abstract class SumFeedbacksBtnState implements FeedbacksBtnState {
  const factory SumFeedbacksBtnState(
      {required String title,
      required int sum,
      required int total}) = _$SumFeedbacksBtnState;

  String get title => throw _privateConstructorUsedError;
  int get sum => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SumFeedbacksBtnStateCopyWith<SumFeedbacksBtnState> get copyWith =>
      throw _privateConstructorUsedError;
}
