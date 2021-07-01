// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'company_sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompanySignUpEventTearOff {
  const _$CompanySignUpEventTearOff();

  _InitialCompanySignUpEvent initial() {
    return const _InitialCompanySignUpEvent();
  }

  _PageOneCompanySignUpEvent pageOne(
      {required Texts name, required Phone phone, required Texts inn}) {
    return _PageOneCompanySignUpEvent(
      name: name,
      phone: phone,
      inn: inn,
    );
  }

  _PageTwoCompanySignUpEvent pageTwo(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik}) {
    return _PageTwoCompanySignUpEvent(
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
const $CompanySignUpEvent = _$CompanySignUpEventTearOff();

/// @nodoc
mixin _$CompanySignUpEvent {
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
    required TResult Function(_InitialCompanySignUpEvent value) initial,
    required TResult Function(_PageOneCompanySignUpEvent value) pageOne,
    required TResult Function(_PageTwoCompanySignUpEvent value) pageTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpEvent value)? initial,
    TResult Function(_PageOneCompanySignUpEvent value)? pageOne,
    TResult Function(_PageTwoCompanySignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySignUpEventCopyWith<$Res> {
  factory $CompanySignUpEventCopyWith(
          CompanySignUpEvent value, $Res Function(CompanySignUpEvent) then) =
      _$CompanySignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanySignUpEventCopyWithImpl<$Res>
    implements $CompanySignUpEventCopyWith<$Res> {
  _$CompanySignUpEventCopyWithImpl(this._value, this._then);

  final CompanySignUpEvent _value;
  // ignore: unused_field
  final $Res Function(CompanySignUpEvent) _then;
}

/// @nodoc
abstract class _$InitialCompanySignUpEventCopyWith<$Res> {
  factory _$InitialCompanySignUpEventCopyWith(_InitialCompanySignUpEvent value,
          $Res Function(_InitialCompanySignUpEvent) then) =
      __$InitialCompanySignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCompanySignUpEventCopyWithImpl<$Res>
    extends _$CompanySignUpEventCopyWithImpl<$Res>
    implements _$InitialCompanySignUpEventCopyWith<$Res> {
  __$InitialCompanySignUpEventCopyWithImpl(_InitialCompanySignUpEvent _value,
      $Res Function(_InitialCompanySignUpEvent) _then)
      : super(_value, (v) => _then(v as _InitialCompanySignUpEvent));

  @override
  _InitialCompanySignUpEvent get _value =>
      super._value as _InitialCompanySignUpEvent;
}

/// @nodoc

class _$_InitialCompanySignUpEvent implements _InitialCompanySignUpEvent {
  const _$_InitialCompanySignUpEvent();

  @override
  String toString() {
    return 'CompanySignUpEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCompanySignUpEvent);
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
    required TResult Function(_InitialCompanySignUpEvent value) initial,
    required TResult Function(_PageOneCompanySignUpEvent value) pageOne,
    required TResult Function(_PageTwoCompanySignUpEvent value) pageTwo,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpEvent value)? initial,
    TResult Function(_PageOneCompanySignUpEvent value)? pageOne,
    TResult Function(_PageTwoCompanySignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCompanySignUpEvent implements CompanySignUpEvent {
  const factory _InitialCompanySignUpEvent() = _$_InitialCompanySignUpEvent;
}

/// @nodoc
abstract class _$PageOneCompanySignUpEventCopyWith<$Res> {
  factory _$PageOneCompanySignUpEventCopyWith(_PageOneCompanySignUpEvent value,
          $Res Function(_PageOneCompanySignUpEvent) then) =
      __$PageOneCompanySignUpEventCopyWithImpl<$Res>;
  $Res call({Texts name, Phone phone, Texts inn});
}

/// @nodoc
class __$PageOneCompanySignUpEventCopyWithImpl<$Res>
    extends _$CompanySignUpEventCopyWithImpl<$Res>
    implements _$PageOneCompanySignUpEventCopyWith<$Res> {
  __$PageOneCompanySignUpEventCopyWithImpl(_PageOneCompanySignUpEvent _value,
      $Res Function(_PageOneCompanySignUpEvent) _then)
      : super(_value, (v) => _then(v as _PageOneCompanySignUpEvent));

  @override
  _PageOneCompanySignUpEvent get _value =>
      super._value as _PageOneCompanySignUpEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? inn = freezed,
  }) {
    return _then(_PageOneCompanySignUpEvent(
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

class _$_PageOneCompanySignUpEvent implements _PageOneCompanySignUpEvent {
  const _$_PageOneCompanySignUpEvent(
      {required this.name, required this.phone, required this.inn});

  @override
  final Texts name;
  @override
  final Phone phone;
  @override
  final Texts inn;

  @override
  String toString() {
    return 'CompanySignUpEvent.pageOne(name: $name, phone: $phone, inn: $inn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageOneCompanySignUpEvent &&
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
  _$PageOneCompanySignUpEventCopyWith<_PageOneCompanySignUpEvent>
      get copyWith =>
          __$PageOneCompanySignUpEventCopyWithImpl<_PageOneCompanySignUpEvent>(
              this, _$identity);

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
    required TResult Function(_InitialCompanySignUpEvent value) initial,
    required TResult Function(_PageOneCompanySignUpEvent value) pageOne,
    required TResult Function(_PageTwoCompanySignUpEvent value) pageTwo,
  }) {
    return pageOne(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpEvent value)? initial,
    TResult Function(_PageOneCompanySignUpEvent value)? pageOne,
    TResult Function(_PageTwoCompanySignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) {
    if (pageOne != null) {
      return pageOne(this);
    }
    return orElse();
  }
}

abstract class _PageOneCompanySignUpEvent implements CompanySignUpEvent {
  const factory _PageOneCompanySignUpEvent(
      {required Texts name,
      required Phone phone,
      required Texts inn}) = _$_PageOneCompanySignUpEvent;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get inn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageOneCompanySignUpEventCopyWith<_PageOneCompanySignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PageTwoCompanySignUpEventCopyWith<$Res> {
  factory _$PageTwoCompanySignUpEventCopyWith(_PageTwoCompanySignUpEvent value,
          $Res Function(_PageTwoCompanySignUpEvent) then) =
      __$PageTwoCompanySignUpEventCopyWithImpl<$Res>;
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
class __$PageTwoCompanySignUpEventCopyWithImpl<$Res>
    extends _$CompanySignUpEventCopyWithImpl<$Res>
    implements _$PageTwoCompanySignUpEventCopyWith<$Res> {
  __$PageTwoCompanySignUpEventCopyWithImpl(_PageTwoCompanySignUpEvent _value,
      $Res Function(_PageTwoCompanySignUpEvent) _then)
      : super(_value, (v) => _then(v as _PageTwoCompanySignUpEvent));

  @override
  _PageTwoCompanySignUpEvent get _value =>
      super._value as _PageTwoCompanySignUpEvent;

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
    return _then(_PageTwoCompanySignUpEvent(
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

class _$_PageTwoCompanySignUpEvent implements _PageTwoCompanySignUpEvent {
  const _$_PageTwoCompanySignUpEvent(
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
    return 'CompanySignUpEvent.pageTwo(name: $name, phone: $phone, inn: $inn, nameCompany: $nameCompany, address: $address, bin: $bin, bik: $bik)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageTwoCompanySignUpEvent &&
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
  _$PageTwoCompanySignUpEventCopyWith<_PageTwoCompanySignUpEvent>
      get copyWith =>
          __$PageTwoCompanySignUpEventCopyWithImpl<_PageTwoCompanySignUpEvent>(
              this, _$identity);

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
    required TResult Function(_InitialCompanySignUpEvent value) initial,
    required TResult Function(_PageOneCompanySignUpEvent value) pageOne,
    required TResult Function(_PageTwoCompanySignUpEvent value) pageTwo,
  }) {
    return pageTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpEvent value)? initial,
    TResult Function(_PageOneCompanySignUpEvent value)? pageOne,
    TResult Function(_PageTwoCompanySignUpEvent value)? pageTwo,
    required TResult orElse(),
  }) {
    if (pageTwo != null) {
      return pageTwo(this);
    }
    return orElse();
  }
}

abstract class _PageTwoCompanySignUpEvent implements CompanySignUpEvent {
  const factory _PageTwoCompanySignUpEvent(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik}) = _$_PageTwoCompanySignUpEvent;

  Texts get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Texts get inn => throw _privateConstructorUsedError;
  Texts get nameCompany => throw _privateConstructorUsedError;
  Texts get address => throw _privateConstructorUsedError;
  Texts get bin => throw _privateConstructorUsedError;
  Texts get bik => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageTwoCompanySignUpEventCopyWith<_PageTwoCompanySignUpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompanySignUpStateTearOff {
  const _$CompanySignUpStateTearOff();

  _InitialCompanySignUpState initial() {
    return const _InitialCompanySignUpState();
  }

  CompanyStateCompanySignUpState companyState(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik,
      required FormzStatus statusA,
      required FormzStatus statusB}) {
    return CompanyStateCompanySignUpState(
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

  _SuccessSignUpCompanySignUpState successSignUp() {
    return const _SuccessSignUpCompanySignUpState();
  }
}

/// @nodoc
const $CompanySignUpState = _$CompanySignUpStateTearOff();

/// @nodoc
mixin _$CompanySignUpState {
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
        companyState,
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
        companyState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCompanySignUpState value) initial,
    required TResult Function(CompanyStateCompanySignUpState value)
        companyState,
    required TResult Function(_SuccessSignUpCompanySignUpState value)
        successSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpState value)? initial,
    TResult Function(CompanyStateCompanySignUpState value)? companyState,
    TResult Function(_SuccessSignUpCompanySignUpState value)? successSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySignUpStateCopyWith<$Res> {
  factory $CompanySignUpStateCopyWith(
          CompanySignUpState value, $Res Function(CompanySignUpState) then) =
      _$CompanySignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanySignUpStateCopyWithImpl<$Res>
    implements $CompanySignUpStateCopyWith<$Res> {
  _$CompanySignUpStateCopyWithImpl(this._value, this._then);

  final CompanySignUpState _value;
  // ignore: unused_field
  final $Res Function(CompanySignUpState) _then;
}

/// @nodoc
abstract class _$InitialCompanySignUpStateCopyWith<$Res> {
  factory _$InitialCompanySignUpStateCopyWith(_InitialCompanySignUpState value,
          $Res Function(_InitialCompanySignUpState) then) =
      __$InitialCompanySignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCompanySignUpStateCopyWithImpl<$Res>
    extends _$CompanySignUpStateCopyWithImpl<$Res>
    implements _$InitialCompanySignUpStateCopyWith<$Res> {
  __$InitialCompanySignUpStateCopyWithImpl(_InitialCompanySignUpState _value,
      $Res Function(_InitialCompanySignUpState) _then)
      : super(_value, (v) => _then(v as _InitialCompanySignUpState));

  @override
  _InitialCompanySignUpState get _value =>
      super._value as _InitialCompanySignUpState;
}

/// @nodoc

class _$_InitialCompanySignUpState implements _InitialCompanySignUpState {
  const _$_InitialCompanySignUpState();

  @override
  String toString() {
    return 'CompanySignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCompanySignUpState);
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
        companyState,
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
        companyState,
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
    required TResult Function(_InitialCompanySignUpState value) initial,
    required TResult Function(CompanyStateCompanySignUpState value)
        companyState,
    required TResult Function(_SuccessSignUpCompanySignUpState value)
        successSignUp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpState value)? initial,
    TResult Function(CompanyStateCompanySignUpState value)? companyState,
    TResult Function(_SuccessSignUpCompanySignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCompanySignUpState implements CompanySignUpState {
  const factory _InitialCompanySignUpState() = _$_InitialCompanySignUpState;
}

/// @nodoc
abstract class $CompanyStateCompanySignUpStateCopyWith<$Res> {
  factory $CompanyStateCompanySignUpStateCopyWith(
          CompanyStateCompanySignUpState value,
          $Res Function(CompanyStateCompanySignUpState) then) =
      _$CompanyStateCompanySignUpStateCopyWithImpl<$Res>;
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
class _$CompanyStateCompanySignUpStateCopyWithImpl<$Res>
    extends _$CompanySignUpStateCopyWithImpl<$Res>
    implements $CompanyStateCompanySignUpStateCopyWith<$Res> {
  _$CompanyStateCompanySignUpStateCopyWithImpl(
      CompanyStateCompanySignUpState _value,
      $Res Function(CompanyStateCompanySignUpState) _then)
      : super(_value, (v) => _then(v as CompanyStateCompanySignUpState));

  @override
  CompanyStateCompanySignUpState get _value =>
      super._value as CompanyStateCompanySignUpState;

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
    return _then(CompanyStateCompanySignUpState(
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

class _$CompanyStateCompanySignUpState
    implements CompanyStateCompanySignUpState {
  const _$CompanyStateCompanySignUpState(
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
    return 'CompanySignUpState.companyState(name: $name, phone: $phone, inn: $inn, nameCompany: $nameCompany, address: $address, bin: $bin, bik: $bik, statusA: $statusA, statusB: $statusB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyStateCompanySignUpState &&
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
  $CompanyStateCompanySignUpStateCopyWith<CompanyStateCompanySignUpState>
      get copyWith => _$CompanyStateCompanySignUpStateCopyWithImpl<
          CompanyStateCompanySignUpState>(this, _$identity);

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
        companyState,
    required TResult Function() successSignUp,
  }) {
    return companyState(
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
        companyState,
    TResult Function()? successSignUp,
    required TResult orElse(),
  }) {
    if (companyState != null) {
      return companyState(
          name, phone, inn, nameCompany, address, bin, bik, statusA, statusB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCompanySignUpState value) initial,
    required TResult Function(CompanyStateCompanySignUpState value)
        companyState,
    required TResult Function(_SuccessSignUpCompanySignUpState value)
        successSignUp,
  }) {
    return companyState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpState value)? initial,
    TResult Function(CompanyStateCompanySignUpState value)? companyState,
    TResult Function(_SuccessSignUpCompanySignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (companyState != null) {
      return companyState(this);
    }
    return orElse();
  }
}

abstract class CompanyStateCompanySignUpState implements CompanySignUpState {
  const factory CompanyStateCompanySignUpState(
      {required Texts name,
      required Phone phone,
      required Texts inn,
      required Texts nameCompany,
      required Texts address,
      required Texts bin,
      required Texts bik,
      required FormzStatus statusA,
      required FormzStatus statusB}) = _$CompanyStateCompanySignUpState;

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
  $CompanyStateCompanySignUpStateCopyWith<CompanyStateCompanySignUpState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessSignUpCompanySignUpStateCopyWith<$Res> {
  factory _$SuccessSignUpCompanySignUpStateCopyWith(
          _SuccessSignUpCompanySignUpState value,
          $Res Function(_SuccessSignUpCompanySignUpState) then) =
      __$SuccessSignUpCompanySignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessSignUpCompanySignUpStateCopyWithImpl<$Res>
    extends _$CompanySignUpStateCopyWithImpl<$Res>
    implements _$SuccessSignUpCompanySignUpStateCopyWith<$Res> {
  __$SuccessSignUpCompanySignUpStateCopyWithImpl(
      _SuccessSignUpCompanySignUpState _value,
      $Res Function(_SuccessSignUpCompanySignUpState) _then)
      : super(_value, (v) => _then(v as _SuccessSignUpCompanySignUpState));

  @override
  _SuccessSignUpCompanySignUpState get _value =>
      super._value as _SuccessSignUpCompanySignUpState;
}

/// @nodoc

class _$_SuccessSignUpCompanySignUpState
    implements _SuccessSignUpCompanySignUpState {
  const _$_SuccessSignUpCompanySignUpState();

  @override
  String toString() {
    return 'CompanySignUpState.successSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessSignUpCompanySignUpState);
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
        companyState,
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
        companyState,
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
    required TResult Function(_InitialCompanySignUpState value) initial,
    required TResult Function(CompanyStateCompanySignUpState value)
        companyState,
    required TResult Function(_SuccessSignUpCompanySignUpState value)
        successSignUp,
  }) {
    return successSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCompanySignUpState value)? initial,
    TResult Function(CompanyStateCompanySignUpState value)? companyState,
    TResult Function(_SuccessSignUpCompanySignUpState value)? successSignUp,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignUpCompanySignUpState implements CompanySignUpState {
  const factory _SuccessSignUpCompanySignUpState() =
      _$_SuccessSignUpCompanySignUpState;
}
