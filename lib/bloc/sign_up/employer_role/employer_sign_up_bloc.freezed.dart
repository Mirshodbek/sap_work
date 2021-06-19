// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'employer_sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmployerSignUpEventTearOff {
  const _$EmployerSignUpEventTearOff();

  _InitialEmployerSignUpEvent initial() {
    return const _InitialEmployerSignUpEvent();
  }

  _PageOneEmployerSignUpEvent pageOne(
      {required Texts name, required Phone phone, required Texts inn}) {
    return _PageOneEmployerSignUpEvent(
      name: name,
      phone: phone,
      inn: inn,
    );
  }

  _PageTwoEmployerSignUpEvent pageTwo(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik}) {
    return _PageTwoEmployerSignUpEvent(
      name: name,
      phone: phone,
      inn: inn,
      nameCompany: nameCompany,
      address: address,
      bin: bin,
      bik: bik,
    );
  }
}

/// @nodoc
const $EmployerSignUpEvent = _$EmployerSignUpEventTearOff();

/// @nodoc
mixin _$EmployerSignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts name, Phone phone, Texts inn) pageOne,
    required TResult Function(Texts name, Phone phone, Texts inn,
            Texts nameCompany, Texts address, Texts bin, Texts bik)
        pageTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts inn)? pageOne,
    TResult Function(Texts name, Phone phone, Texts inn, Texts nameCompany,
            Texts address, Texts bin, Texts bik)?
        pageTwo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpEvent value) initial,
    required TResult Function(_PageOneEmployerSignUpEvent value) pageOne,
    required TResult Function(_PageTwoEmployerSignUpEvent value) pageTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpEvent value)? initial,
    TResult Function(_PageOneEmployerSignUpEvent value)? pageOne,
    TResult Function(_PageTwoEmployerSignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployerSignUpEventCopyWith<$Res> {
  factory $EmployerSignUpEventCopyWith(
          EmployerSignUpEvent value, $Res Function(EmployerSignUpEvent) then) =
      _$EmployerSignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployerSignUpEventCopyWithImpl<$Res>
    implements $EmployerSignUpEventCopyWith<$Res> {
  _$EmployerSignUpEventCopyWithImpl(this._value, this._then);

  final EmployerSignUpEvent _value;
  // ignore: unused_field
  final $Res Function(EmployerSignUpEvent) _then;
}

/// @nodoc
abstract class _$InitialEmployerSignUpEventCopyWith<$Res> {
  factory _$InitialEmployerSignUpEventCopyWith(
          _InitialEmployerSignUpEvent value,
          $Res Function(_InitialEmployerSignUpEvent) then) =
      __$InitialEmployerSignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEmployerSignUpEventCopyWithImpl<$Res>
    extends _$EmployerSignUpEventCopyWithImpl<$Res>
    implements _$InitialEmployerSignUpEventCopyWith<$Res> {
  __$InitialEmployerSignUpEventCopyWithImpl(_InitialEmployerSignUpEvent _value,
      $Res Function(_InitialEmployerSignUpEvent) _then)
      : super(_value, (v) => _then(v as _InitialEmployerSignUpEvent));

  @override
  _InitialEmployerSignUpEvent get _value =>
      super._value as _InitialEmployerSignUpEvent;
}

/// @nodoc

class _$_InitialEmployerSignUpEvent implements _InitialEmployerSignUpEvent {
  const _$_InitialEmployerSignUpEvent();

  @override
  String toString() {
    return 'EmployerSignUpEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEmployerSignUpEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts name, Phone phone, Texts inn) pageOne,
    required TResult Function(Texts name, Phone phone, Texts inn,
            Texts nameCompany, Texts address, Texts bin, Texts bik)
        pageTwo,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts inn)? pageOne,
    TResult Function(Texts name, Phone phone, Texts inn, Texts nameCompany,
            Texts address, Texts bin, Texts bik)?
        pageTwo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpEvent value) initial,
    required TResult Function(_PageOneEmployerSignUpEvent value) pageOne,
    required TResult Function(_PageTwoEmployerSignUpEvent value) pageTwo,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpEvent value)? initial,
    TResult Function(_PageOneEmployerSignUpEvent value)? pageOne,
    TResult Function(_PageTwoEmployerSignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEmployerSignUpEvent implements EmployerSignUpEvent {
  const factory _InitialEmployerSignUpEvent() = _$_InitialEmployerSignUpEvent;
}

/// @nodoc
abstract class _$PageOneEmployerSignUpEventCopyWith<$Res> {
  factory _$PageOneEmployerSignUpEventCopyWith(
          _PageOneEmployerSignUpEvent value,
          $Res Function(_PageOneEmployerSignUpEvent) then) =
      __$PageOneEmployerSignUpEventCopyWithImpl<$Res>;
  $Res call({Texts name, Phone phone, Texts inn});
}

/// @nodoc
class __$PageOneEmployerSignUpEventCopyWithImpl<$Res>
    extends _$EmployerSignUpEventCopyWithImpl<$Res>
    implements _$PageOneEmployerSignUpEventCopyWith<$Res> {
  __$PageOneEmployerSignUpEventCopyWithImpl(_PageOneEmployerSignUpEvent _value,
      $Res Function(_PageOneEmployerSignUpEvent) _then)
      : super(_value, (v) => _then(v as _PageOneEmployerSignUpEvent));

  @override
  _PageOneEmployerSignUpEvent get _value =>
      super._value as _PageOneEmployerSignUpEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? inn = freezed,
  }) {
    return _then(_PageOneEmployerSignUpEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Texts,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_PageOneEmployerSignUpEvent implements _PageOneEmployerSignUpEvent {
  const _$_PageOneEmployerSignUpEvent(
      {required this.name, required this.phone, required this.inn});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts inn;

  @override
  String toString() {
    return 'EmployerSignUpEvent.pageOne(name: $name, phone: $phone, inn: $inn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageOneEmployerSignUpEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.inn, inn) ||
                const DeepCollectionEquality().equals(other.inn, inn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(inn);

  @JsonKey(ignore: true)
  @override
  _$PageOneEmployerSignUpEventCopyWith<_PageOneEmployerSignUpEvent>
      get copyWith => __$PageOneEmployerSignUpEventCopyWithImpl<
          _PageOneEmployerSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts name, Phone phone, Texts inn) pageOne,
    required TResult Function(Texts name, Phone phone, Texts inn,
            Texts nameCompany, Texts address, Texts bin, Texts bik)
        pageTwo,
  }) {
    return pageOne(name, phone, inn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts inn)? pageOne,
    TResult Function(Texts name, Phone phone, Texts inn, Texts nameCompany,
            Texts address, Texts bin, Texts bik)?
        pageTwo,
    required TResult orElse(),
  }) {
    if (pageOne != null) {
      return pageOne(name, phone, inn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpEvent value) initial,
    required TResult Function(_PageOneEmployerSignUpEvent value) pageOne,
    required TResult Function(_PageTwoEmployerSignUpEvent value) pageTwo,
  }) {
    return pageOne(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpEvent value)? initial,
    TResult Function(_PageOneEmployerSignUpEvent value)? pageOne,
    TResult Function(_PageTwoEmployerSignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) {
    if (pageOne != null) {
      return pageOne(this);
    }
    return orElse();
  }
}

abstract class _PageOneEmployerSignUpEvent implements EmployerSignUpEvent {
  const factory _PageOneEmployerSignUpEvent(
      {required Texts name,
      required Phone phone,
      required Texts inn}) = _$_PageOneEmployerSignUpEvent;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get inn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageOneEmployerSignUpEventCopyWith<_PageOneEmployerSignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PageTwoEmployerSignUpEventCopyWith<$Res> {
  factory _$PageTwoEmployerSignUpEventCopyWith(
          _PageTwoEmployerSignUpEvent value,
          $Res Function(_PageTwoEmployerSignUpEvent) then) =
      __$PageTwoEmployerSignUpEventCopyWithImpl<$Res>;
  $Res call(
      {Texts name,
      Phone phone,
      Texts inn,
      Texts nameCompany,
      Texts address,
      Texts bin,
      Texts bik});
}

/// @nodoc
class __$PageTwoEmployerSignUpEventCopyWithImpl<$Res>
    extends _$EmployerSignUpEventCopyWithImpl<$Res>
    implements _$PageTwoEmployerSignUpEventCopyWith<$Res> {
  __$PageTwoEmployerSignUpEventCopyWithImpl(_PageTwoEmployerSignUpEvent _value,
      $Res Function(_PageTwoEmployerSignUpEvent) _then)
      : super(_value, (v) => _then(v as _PageTwoEmployerSignUpEvent));

  @override
  _PageTwoEmployerSignUpEvent get _value =>
      super._value as _PageTwoEmployerSignUpEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? inn = freezed,
    Object? nameCompany = freezed,
    Object? address = freezed,
    Object? bin = freezed,
    Object? bik = freezed,
  }) {
    return _then(_PageTwoEmployerSignUpEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Texts,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as Texts,
      nameCompany: nameCompany == freezed
          ? _value.nameCompany
          : nameCompany // ignore: cast_nullable_to_non_nullable
              as Texts,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Texts,
      bin: bin == freezed
          ? _value.bin
          : bin // ignore: cast_nullable_to_non_nullable
              as Texts,
      bik: bik == freezed
          ? _value.bik
          : bik // ignore: cast_nullable_to_non_nullable
              as Texts,
    ));
  }
}

/// @nodoc

class _$_PageTwoEmployerSignUpEvent implements _PageTwoEmployerSignUpEvent {
  const _$_PageTwoEmployerSignUpEvent(
      {required this.name,
      required this.phone,
      required this.inn,
      required this.nameCompany,
      required this.address,
      required this.bin,
      required this.bik});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts inn;
  @override
  final Texts nameCompany;
  @override
  final Texts address;
  @override
  final Texts bin;
  @override
  final Texts bik;

  @override
  String toString() {
    return 'EmployerSignUpEvent.pageTwo(name: $name, phone: $phone, inn: $inn, nameCompany: $nameCompany, address: $address, bin: $bin, bik: $bik)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageTwoEmployerSignUpEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.inn, inn) ||
                const DeepCollectionEquality().equals(other.inn, inn)) &&
            (identical(other.nameCompany, nameCompany) ||
                const DeepCollectionEquality()
                    .equals(other.nameCompany, nameCompany)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.bin, bin) ||
                const DeepCollectionEquality().equals(other.bin, bin)) &&
            (identical(other.bik, bik) ||
                const DeepCollectionEquality().equals(other.bik, bik)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(inn) ^
      const DeepCollectionEquality().hash(nameCompany) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(bin) ^
      const DeepCollectionEquality().hash(bik);

  @JsonKey(ignore: true)
  @override
  _$PageTwoEmployerSignUpEventCopyWith<_PageTwoEmployerSignUpEvent>
      get copyWith => __$PageTwoEmployerSignUpEventCopyWithImpl<
          _PageTwoEmployerSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Texts name, Phone phone, Texts inn) pageOne,
    required TResult Function(Texts name, Phone phone, Texts inn,
            Texts nameCompany, Texts address, Texts bin, Texts bik)
        pageTwo,
  }) {
    return pageTwo(name, phone, inn, nameCompany, address, bin, bik);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Texts name, Phone phone, Texts inn)? pageOne,
    TResult Function(Texts name, Phone phone, Texts inn, Texts nameCompany,
            Texts address, Texts bin, Texts bik)?
        pageTwo,
    required TResult orElse(),
  }) {
    if (pageTwo != null) {
      return pageTwo(name, phone, inn, nameCompany, address, bin, bik);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpEvent value) initial,
    required TResult Function(_PageOneEmployerSignUpEvent value) pageOne,
    required TResult Function(_PageTwoEmployerSignUpEvent value) pageTwo,
  }) {
    return pageTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpEvent value)? initial,
    TResult Function(_PageOneEmployerSignUpEvent value)? pageOne,
    TResult Function(_PageTwoEmployerSignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) {
    if (pageTwo != null) {
      return pageTwo(this);
    }
    return orElse();
  }
}

abstract class _PageTwoEmployerSignUpEvent implements EmployerSignUpEvent {
  const factory _PageTwoEmployerSignUpEvent(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik}) = _$_PageTwoEmployerSignUpEvent;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get inn => throw _privateConstructorUsedError;
  Texts get nameCompany => throw _privateConstructorUsedError;
  Texts get address => throw _privateConstructorUsedError;
  Texts get bin => throw _privateConstructorUsedError;
  Texts get bik => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageTwoEmployerSignUpEventCopyWith<_PageTwoEmployerSignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EmployerSignUpStateTearOff {
  const _$EmployerSignUpStateTearOff();

  _InitialEmployerSignUpState initial() {
    return const _InitialEmployerSignUpState();
  }

  EmployerStateEmployerSignUpState employerState(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik,
      required FormzStatus statusA,
      required FormzStatus statusB}) {
    return EmployerStateEmployerSignUpState(
      name: name,
      phone: phone,
      inn: inn,
      nameCompany: nameCompany,
      address: address,
      bin: bin,
      bik: bik,
      statusA: statusA,
      statusB: statusB,
    );
  }

  _SuccessSignUpEmployerSignUpState successSignUp() {
    return const _SuccessSignUpEmployerSignUpState();
  }
}

/// @nodoc
const $EmployerSignUpState = _$EmployerSignUpStateTearOff();

/// @nodoc
mixin _$EmployerSignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)
        employerState,
    required TResult Function() successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)?
        employerState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpState value) initial,
    required TResult Function(EmployerStateEmployerSignUpState value)
        employerState,
    required TResult Function(_SuccessSignUpEmployerSignUpState value)
        successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpState value)? initial,
    TResult Function(EmployerStateEmployerSignUpState value)? employerState,
    TResult Function(_SuccessSignUpEmployerSignUpState value)? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployerSignUpStateCopyWith<$Res> {
  factory $EmployerSignUpStateCopyWith(
          EmployerSignUpState value, $Res Function(EmployerSignUpState) then) =
      _$EmployerSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployerSignUpStateCopyWithImpl<$Res>
    implements $EmployerSignUpStateCopyWith<$Res> {
  _$EmployerSignUpStateCopyWithImpl(this._value, this._then);

  final EmployerSignUpState _value;
  // ignore: unused_field
  final $Res Function(EmployerSignUpState) _then;
}

/// @nodoc
abstract class _$InitialEmployerSignUpStateCopyWith<$Res> {
  factory _$InitialEmployerSignUpStateCopyWith(
          _InitialEmployerSignUpState value,
          $Res Function(_InitialEmployerSignUpState) then) =
      __$InitialEmployerSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEmployerSignUpStateCopyWithImpl<$Res>
    extends _$EmployerSignUpStateCopyWithImpl<$Res>
    implements _$InitialEmployerSignUpStateCopyWith<$Res> {
  __$InitialEmployerSignUpStateCopyWithImpl(_InitialEmployerSignUpState _value,
      $Res Function(_InitialEmployerSignUpState) _then)
      : super(_value, (v) => _then(v as _InitialEmployerSignUpState));

  @override
  _InitialEmployerSignUpState get _value =>
      super._value as _InitialEmployerSignUpState;
}

/// @nodoc

class _$_InitialEmployerSignUpState implements _InitialEmployerSignUpState {
  const _$_InitialEmployerSignUpState();

  @override
  String toString() {
    return 'EmployerSignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEmployerSignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)
        employerState,
    required TResult Function() successSignUp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)?
        employerState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpState value) initial,
    required TResult Function(EmployerStateEmployerSignUpState value)
        employerState,
    required TResult Function(_SuccessSignUpEmployerSignUpState value)
        successSignUp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpState value)? initial,
    TResult Function(EmployerStateEmployerSignUpState value)? employerState,
    TResult Function(_SuccessSignUpEmployerSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEmployerSignUpState implements EmployerSignUpState {
  const factory _InitialEmployerSignUpState() = _$_InitialEmployerSignUpState;
}

/// @nodoc
abstract class $EmployerStateEmployerSignUpStateCopyWith<$Res> {
  factory $EmployerStateEmployerSignUpStateCopyWith(
          EmployerStateEmployerSignUpState value,
          $Res Function(EmployerStateEmployerSignUpState) then) =
      _$EmployerStateEmployerSignUpStateCopyWithImpl<$Res>;
  $Res call(
      {Texts name,
      Phone phone,
      Texts inn,
      Texts nameCompany,
      Texts address,
      Texts bin,
      Texts bik,
      FormzStatus statusA,
      FormzStatus statusB});
}

/// @nodoc
class _$EmployerStateEmployerSignUpStateCopyWithImpl<$Res>
    extends _$EmployerSignUpStateCopyWithImpl<$Res>
    implements $EmployerStateEmployerSignUpStateCopyWith<$Res> {
  _$EmployerStateEmployerSignUpStateCopyWithImpl(
      EmployerStateEmployerSignUpState _value,
      $Res Function(EmployerStateEmployerSignUpState) _then)
      : super(_value, (v) => _then(v as EmployerStateEmployerSignUpState));

  @override
  EmployerStateEmployerSignUpState get _value =>
      super._value as EmployerStateEmployerSignUpState;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? inn = freezed,
    Object? nameCompany = freezed,
    Object? address = freezed,
    Object? bin = freezed,
    Object? bik = freezed,
    Object? statusA = freezed,
    Object? statusB = freezed,
  }) {
    return _then(EmployerStateEmployerSignUpState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Texts,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as Texts,
      nameCompany: nameCompany == freezed
          ? _value.nameCompany
          : nameCompany // ignore: cast_nullable_to_non_nullable
              as Texts,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Texts,
      bin: bin == freezed
          ? _value.bin
          : bin // ignore: cast_nullable_to_non_nullable
              as Texts,
      bik: bik == freezed
          ? _value.bik
          : bik // ignore: cast_nullable_to_non_nullable
              as Texts,
      statusA: statusA == freezed
          ? _value.statusA
          : statusA // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      statusB: statusB == freezed
          ? _value.statusB
          : statusB // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$EmployerStateEmployerSignUpState
    implements EmployerStateEmployerSignUpState {
  const _$EmployerStateEmployerSignUpState(
      {required this.name,
      required this.phone,
      required this.inn,
      required this.nameCompany,
      required this.address,
      required this.bin,
      required this.bik,
      required this.statusA,
      required this.statusB});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts inn;
  @override
  final Texts nameCompany;
  @override
  final Texts address;
  @override
  final Texts bin;
  @override
  final Texts bik;
  @override
  final FormzStatus statusA;
  @override
  final FormzStatus statusB;

  @override
  String toString() {
    return 'EmployerSignUpState.employerState(name: $name, phone: $phone, inn: $inn, nameCompany: $nameCompany, address: $address, bin: $bin, bik: $bik, statusA: $statusA, statusB: $statusB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployerStateEmployerSignUpState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.inn, inn) ||
                const DeepCollectionEquality().equals(other.inn, inn)) &&
            (identical(other.nameCompany, nameCompany) ||
                const DeepCollectionEquality()
                    .equals(other.nameCompany, nameCompany)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.bin, bin) ||
                const DeepCollectionEquality().equals(other.bin, bin)) &&
            (identical(other.bik, bik) ||
                const DeepCollectionEquality().equals(other.bik, bik)) &&
            (identical(other.statusA, statusA) ||
                const DeepCollectionEquality()
                    .equals(other.statusA, statusA)) &&
            (identical(other.statusB, statusB) ||
                const DeepCollectionEquality().equals(other.statusB, statusB)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(inn) ^
      const DeepCollectionEquality().hash(nameCompany) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(bin) ^
      const DeepCollectionEquality().hash(bik) ^
      const DeepCollectionEquality().hash(statusA) ^
      const DeepCollectionEquality().hash(statusB);

  @JsonKey(ignore: true)
  @override
  $EmployerStateEmployerSignUpStateCopyWith<EmployerStateEmployerSignUpState>
      get copyWith => _$EmployerStateEmployerSignUpStateCopyWithImpl<
          EmployerStateEmployerSignUpState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)
        employerState,
    required TResult Function() successSignUp,
  }) {
    return employerState(
        name, phone, inn, nameCompany, address, bin, bik, statusA, statusB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)?
        employerState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (employerState != null) {
      return employerState(
          name, phone, inn, nameCompany, address, bin, bik, statusA, statusB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpState value) initial,
    required TResult Function(EmployerStateEmployerSignUpState value)
        employerState,
    required TResult Function(_SuccessSignUpEmployerSignUpState value)
        successSignUp,
  }) {
    return employerState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpState value)? initial,
    TResult Function(EmployerStateEmployerSignUpState value)? employerState,
    TResult Function(_SuccessSignUpEmployerSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (employerState != null) {
      return employerState(this);
    }
    return orElse();
  }
}

abstract class EmployerStateEmployerSignUpState implements EmployerSignUpState {
  const factory EmployerStateEmployerSignUpState(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik,
      required FormzStatus statusA,
      required FormzStatus statusB}) = _$EmployerStateEmployerSignUpState;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get inn => throw _privateConstructorUsedError;
  Texts get nameCompany => throw _privateConstructorUsedError;
  Texts get address => throw _privateConstructorUsedError;
  Texts get bin => throw _privateConstructorUsedError;
  Texts get bik => throw _privateConstructorUsedError;
  FormzStatus get statusA => throw _privateConstructorUsedError;
  FormzStatus get statusB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployerStateEmployerSignUpStateCopyWith<EmployerStateEmployerSignUpState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessSignUpEmployerSignUpStateCopyWith<$Res> {
  factory _$SuccessSignUpEmployerSignUpStateCopyWith(
          _SuccessSignUpEmployerSignUpState value,
          $Res Function(_SuccessSignUpEmployerSignUpState) then) =
      __$SuccessSignUpEmployerSignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessSignUpEmployerSignUpStateCopyWithImpl<$Res>
    extends _$EmployerSignUpStateCopyWithImpl<$Res>
    implements _$SuccessSignUpEmployerSignUpStateCopyWith<$Res> {
  __$SuccessSignUpEmployerSignUpStateCopyWithImpl(
      _SuccessSignUpEmployerSignUpState _value,
      $Res Function(_SuccessSignUpEmployerSignUpState) _then)
      : super(_value, (v) => _then(v as _SuccessSignUpEmployerSignUpState));

  @override
  _SuccessSignUpEmployerSignUpState get _value =>
      super._value as _SuccessSignUpEmployerSignUpState;
}

/// @nodoc

class _$_SuccessSignUpEmployerSignUpState
    implements _SuccessSignUpEmployerSignUpState {
  const _$_SuccessSignUpEmployerSignUpState();

  @override
  String toString() {
    return 'EmployerSignUpState.successSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessSignUpEmployerSignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)
        employerState,
    required TResult Function() successSignUp,
  }) {
    return successSignUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Texts name,
            Phone phone,
            Texts inn,
            Texts nameCompany,
            Texts address,
            Texts bin,
            Texts bik,
            FormzStatus statusA,
            FormzStatus statusB)?
        employerState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEmployerSignUpState value) initial,
    required TResult Function(EmployerStateEmployerSignUpState value)
        employerState,
    required TResult Function(_SuccessSignUpEmployerSignUpState value)
        successSignUp,
  }) {
    return successSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEmployerSignUpState value)? initial,
    TResult Function(EmployerStateEmployerSignUpState value)? employerState,
    TResult Function(_SuccessSignUpEmployerSignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignUpEmployerSignUpState
    implements EmployerSignUpState {
  const factory _SuccessSignUpEmployerSignUpState() =
      _$_SuccessSignUpEmployerSignUpState;
}
