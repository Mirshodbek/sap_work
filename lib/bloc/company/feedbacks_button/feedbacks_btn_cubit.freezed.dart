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

  ChatFeedbacksBtnState chat(
      {required String avatarUser,
      required String avatarCompany,
      required String name,
      required int userId}) {
    return ChatFeedbacksBtnState(
      avatarUser: avatarUser,
      avatarCompany: avatarCompany,
      name: name,
      userId: userId,
    );
  }

  ResumeInviteFeedbacksBtnState resumeInvite(
      {required FeedbackVacancy resume, required bool isInvite}) {
    return ResumeInviteFeedbacksBtnState(
      resume: resume,
      isInvite: isInvite,
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
    required TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)
        chat,
    required TResult Function(FeedbackVacancy resume, bool isInvite)
        resumeInvite,
    required TResult Function(String title, int sum, int total) sum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)?
        chat,
    TResult Function(FeedbackVacancy resume, bool isInvite)? resumeInvite,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ChatFeedbacksBtnState value) chat,
    required TResult Function(ResumeInviteFeedbacksBtnState value) resumeInvite,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ChatFeedbacksBtnState value)? chat,
    TResult Function(ResumeInviteFeedbacksBtnState value)? resumeInvite,
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
    required TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)
        chat,
    required TResult Function(FeedbackVacancy resume, bool isInvite)
        resumeInvite,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)?
        chat,
    TResult Function(FeedbackVacancy resume, bool isInvite)? resumeInvite,
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
    required TResult Function(ChatFeedbacksBtnState value) chat,
    required TResult Function(ResumeInviteFeedbacksBtnState value) resumeInvite,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ChatFeedbacksBtnState value)? chat,
    TResult Function(ResumeInviteFeedbacksBtnState value)? resumeInvite,
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
    required TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)
        chat,
    required TResult Function(FeedbackVacancy resume, bool isInvite)
        resumeInvite,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return payment();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)?
        chat,
    TResult Function(FeedbackVacancy resume, bool isInvite)? resumeInvite,
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
    required TResult Function(ChatFeedbacksBtnState value) chat,
    required TResult Function(ResumeInviteFeedbacksBtnState value) resumeInvite,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ChatFeedbacksBtnState value)? chat,
    TResult Function(ResumeInviteFeedbacksBtnState value)? resumeInvite,
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
abstract class $ChatFeedbacksBtnStateCopyWith<$Res> {
  factory $ChatFeedbacksBtnStateCopyWith(ChatFeedbacksBtnState value,
          $Res Function(ChatFeedbacksBtnState) then) =
      _$ChatFeedbacksBtnStateCopyWithImpl<$Res>;
  $Res call({String avatarUser, String avatarCompany, String name, int userId});
}

/// @nodoc
class _$ChatFeedbacksBtnStateCopyWithImpl<$Res>
    extends _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $ChatFeedbacksBtnStateCopyWith<$Res> {
  _$ChatFeedbacksBtnStateCopyWithImpl(
      ChatFeedbacksBtnState _value, $Res Function(ChatFeedbacksBtnState) _then)
      : super(_value, (v) => _then(v as ChatFeedbacksBtnState));

  @override
  ChatFeedbacksBtnState get _value => super._value as ChatFeedbacksBtnState;

  @override
  $Res call({
    Object? avatarUser = freezed,
    Object? avatarCompany = freezed,
    Object? name = freezed,
    Object? userId = freezed,
  }) {
    return _then(ChatFeedbacksBtnState(
      avatarUser: avatarUser == freezed
          ? _value.avatarUser
          : avatarUser // ignore: cast_nullable_to_non_nullable
              as String,
      avatarCompany: avatarCompany == freezed
          ? _value.avatarCompany
          : avatarCompany // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatFeedbacksBtnState implements ChatFeedbacksBtnState {
  const _$ChatFeedbacksBtnState(
      {required this.avatarUser,
      required this.avatarCompany,
      required this.name,
      required this.userId});

  @override
  final String avatarUser;
  @override
  final String avatarCompany;
  @override
  final String name;
  @override
  final int userId;

  @override
  String toString() {
    return 'FeedbacksBtnState.chat(avatarUser: $avatarUser, avatarCompany: $avatarCompany, name: $name, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatFeedbacksBtnState &&
            (identical(other.avatarUser, avatarUser) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUser, avatarUser)) &&
            (identical(other.avatarCompany, avatarCompany) ||
                const DeepCollectionEquality()
                    .equals(other.avatarCompany, avatarCompany)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatarUser) ^
      const DeepCollectionEquality().hash(avatarCompany) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $ChatFeedbacksBtnStateCopyWith<ChatFeedbacksBtnState> get copyWith =>
      _$ChatFeedbacksBtnStateCopyWithImpl<ChatFeedbacksBtnState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)
        chat,
    required TResult Function(FeedbackVacancy resume, bool isInvite)
        resumeInvite,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return chat(avatarUser, avatarCompany, name, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)?
        chat,
    TResult Function(FeedbackVacancy resume, bool isInvite)? resumeInvite,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(avatarUser, avatarCompany, name, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ChatFeedbacksBtnState value) chat,
    required TResult Function(ResumeInviteFeedbacksBtnState value) resumeInvite,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ChatFeedbacksBtnState value)? chat,
    TResult Function(ResumeInviteFeedbacksBtnState value)? resumeInvite,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }
}

abstract class ChatFeedbacksBtnState implements FeedbacksBtnState {
  const factory ChatFeedbacksBtnState(
      {required String avatarUser,
      required String avatarCompany,
      required String name,
      required int userId}) = _$ChatFeedbacksBtnState;

  String get avatarUser => throw _privateConstructorUsedError;
  String get avatarCompany => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatFeedbacksBtnStateCopyWith<ChatFeedbacksBtnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeInviteFeedbacksBtnStateCopyWith<$Res> {
  factory $ResumeInviteFeedbacksBtnStateCopyWith(
          ResumeInviteFeedbacksBtnState value,
          $Res Function(ResumeInviteFeedbacksBtnState) then) =
      _$ResumeInviteFeedbacksBtnStateCopyWithImpl<$Res>;
  $Res call({FeedbackVacancy resume, bool isInvite});
}

/// @nodoc
class _$ResumeInviteFeedbacksBtnStateCopyWithImpl<$Res>
    extends _$FeedbacksBtnStateCopyWithImpl<$Res>
    implements $ResumeInviteFeedbacksBtnStateCopyWith<$Res> {
  _$ResumeInviteFeedbacksBtnStateCopyWithImpl(
      ResumeInviteFeedbacksBtnState _value,
      $Res Function(ResumeInviteFeedbacksBtnState) _then)
      : super(_value, (v) => _then(v as ResumeInviteFeedbacksBtnState));

  @override
  ResumeInviteFeedbacksBtnState get _value =>
      super._value as ResumeInviteFeedbacksBtnState;

  @override
  $Res call({
    Object? resume = freezed,
    Object? isInvite = freezed,
  }) {
    return _then(ResumeInviteFeedbacksBtnState(
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as FeedbackVacancy,
      isInvite: isInvite == freezed
          ? _value.isInvite
          : isInvite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResumeInviteFeedbacksBtnState implements ResumeInviteFeedbacksBtnState {
  const _$ResumeInviteFeedbacksBtnState(
      {required this.resume, required this.isInvite});

  @override
  final FeedbackVacancy resume;
  @override
  final bool isInvite;

  @override
  String toString() {
    return 'FeedbacksBtnState.resumeInvite(resume: $resume, isInvite: $isInvite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResumeInviteFeedbacksBtnState &&
            (identical(other.resume, resume) ||
                const DeepCollectionEquality().equals(other.resume, resume)) &&
            (identical(other.isInvite, isInvite) ||
                const DeepCollectionEquality()
                    .equals(other.isInvite, isInvite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resume) ^
      const DeepCollectionEquality().hash(isInvite);

  @JsonKey(ignore: true)
  @override
  $ResumeInviteFeedbacksBtnStateCopyWith<ResumeInviteFeedbacksBtnState>
      get copyWith => _$ResumeInviteFeedbacksBtnStateCopyWithImpl<
          ResumeInviteFeedbacksBtnState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() payment,
    required TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)
        chat,
    required TResult Function(FeedbackVacancy resume, bool isInvite)
        resumeInvite,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return resumeInvite(resume, isInvite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)?
        chat,
    TResult Function(FeedbackVacancy resume, bool isInvite)? resumeInvite,
    TResult Function(String title, int sum, int total)? sum,
    required TResult orElse(),
  }) {
    if (resumeInvite != null) {
      return resumeInvite(resume, isInvite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyFeedbacksBtnState value) empty,
    required TResult Function(PaymentFeedbacksBtnState value) payment,
    required TResult Function(ChatFeedbacksBtnState value) chat,
    required TResult Function(ResumeInviteFeedbacksBtnState value) resumeInvite,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return resumeInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ChatFeedbacksBtnState value)? chat,
    TResult Function(ResumeInviteFeedbacksBtnState value)? resumeInvite,
    TResult Function(SumFeedbacksBtnState value)? sum,
    required TResult orElse(),
  }) {
    if (resumeInvite != null) {
      return resumeInvite(this);
    }
    return orElse();
  }
}

abstract class ResumeInviteFeedbacksBtnState implements FeedbacksBtnState {
  const factory ResumeInviteFeedbacksBtnState(
      {required FeedbackVacancy resume,
      required bool isInvite}) = _$ResumeInviteFeedbacksBtnState;

  FeedbackVacancy get resume => throw _privateConstructorUsedError;
  bool get isInvite => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeInviteFeedbacksBtnStateCopyWith<ResumeInviteFeedbacksBtnState>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)
        chat,
    required TResult Function(FeedbackVacancy resume, bool isInvite)
        resumeInvite,
    required TResult Function(String title, int sum, int total) sum,
  }) {
    return sum(title, this.sum, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? payment,
    TResult Function(
            String avatarUser, String avatarCompany, String name, int userId)?
        chat,
    TResult Function(FeedbackVacancy resume, bool isInvite)? resumeInvite,
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
    required TResult Function(ChatFeedbacksBtnState value) chat,
    required TResult Function(ResumeInviteFeedbacksBtnState value) resumeInvite,
    required TResult Function(SumFeedbacksBtnState value) sum,
  }) {
    return sum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyFeedbacksBtnState value)? empty,
    TResult Function(PaymentFeedbacksBtnState value)? payment,
    TResult Function(ChatFeedbacksBtnState value)? chat,
    TResult Function(ResumeInviteFeedbacksBtnState value)? resumeInvite,
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
