import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'core.dart';

part 'core_profile_bloc.freezed.dart';

class CoreProfileBloc extends Bloc<CoreProfileEvent, CoreProfileState> {
  final GetLocalVacancyCompany getLocalVacancy;
  final CompanyRemoteDataBase postVacancy;
  final GetCategories getCategories;

  CoreProfileBloc(this.getLocalVacancy, this.postVacancy, this.getCategories)
      : super(const CoreProfileState.initial());

  @override
  Stream<CoreProfileState> mapEventToState(CoreProfileEvent event) async* {
    yield* event.map(
        initial: _initialPagesEvent,
        postVacancy: _postVacancyEvent,
        onSelect: _onSelectEvent);
  }

  Stream<CoreProfileState> _initialPagesEvent(
      _InitialCoreProfileEvent event) async* {
    yield const CoreProfileState.loading();
    final nameVacancy = await getLocalVacancy(Params());
    final categories = await getCategories(NoParams());
    yield* nameVacancy.fold((failure) async* {
      yield* categories.fold((failure) async* {
        yield* _attributesState(
            vacancy: LocalVacancyData(EMPTY_TITLE_VACANCY, 0), categories: []);
      }, (categories) async* {
        yield* _attributesState(
            vacancy: LocalVacancyData(EMPTY_TITLE_VACANCY, 0),
            categories: categories);
      });
    }, (data) async* {
      yield* categories.fold((failure) async* {
        yield* _attributesState(vacancy: data, categories: []);
      }, (categories) async* {
        yield* _attributesState(vacancy: data, categories: categories);
      });
    });
  }

  Stream<CoreProfileState> _attributesState(
      {required LocalVacancyData vacancy,
      required List<Category> categories}) async* {
    yield CoreProfileState.attributes(
        categories: categories,
        localVacancy: vacancy,
        status: FormzStatus.pure,
        vacancyId: 0);
  }

  Stream<CoreProfileState> _onSelectEvent(
      _OnSelectCoreProfileEvent event) async* {
    await getLocalVacancy(Params(
        writeVacancy: true, vacancy: LocalVacancyData(event.title, event.id)));
    yield state.maybeMap(
        orElse: () => state,
        attributes: (_state) => _state.copyWith(
            localVacancy: LocalVacancyData(event.title, event.id),
            vacancyId: event.id));
  }

  Stream<CoreProfileState> _postVacancyEvent(
      _PostVacancyCoreProfileEvent event) async* {
    final isValidated = Formz.validate([
      Texts.dirty(event.vacancyName),
      Texts.dirty(event.city),
      Texts.dirty(event.grade),
      Texts.dirty(event.stage),
      Texts.dirty(event.type),
      Texts.dirty(event.body),
      Texts.dirty(event.minsalary),
      Texts.dirty(event.maxsalary),
      Texts.dirty(event.abilities),
      Texts.dirty(event.schedule),
      Texts.dirty(event.categoryId.toString()),
    ]);
    yield state.maybeMap(
        orElse: () => state,
        attributes: (_state) => _state.copyWith(status: isValidated));
    if (isValidated.isValidated) {
      try {
        yield state.maybeMap(
            orElse: () => state,
            attributes: (_state) =>
                _state.copyWith(status: FormzStatus.submissionInProgress));
        final result = await postVacancy.postVacancyCompany(
          name: event.vacancyName,
          city: event.city,
          grade: event.grade,
          stage: event.stage,
          schedule: event.schedule,
          body: event.body,
          minsalary: event.minsalary,
          maxsalary: event.maxsalary,
          type: event.type,
          abilities: event.abilities,
          category: event.categoryId,
        );
        await getLocalVacancy(Params(
            writeVacancy: true,
            vacancy: LocalVacancyData(
                event.vacancyName, json.decode(result.body)["id"])));
        yield state.maybeMap(
            orElse: () => state,
            attributes: (_state) =>
                _state.copyWith(status: FormzStatus.submissionSuccess));
      } catch (_) {
        yield state.maybeMap(
            orElse: () => state,
            attributes: (_state) =>
                _state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }
}

@freezed
abstract class CoreProfileEvent with _$CoreProfileEvent {
  const factory CoreProfileEvent.initial() = _InitialCoreProfileEvent;

  const factory CoreProfileEvent.onSelect(
      {required final String title,
      required final int id}) = _OnSelectCoreProfileEvent;

  const factory CoreProfileEvent.postVacancy(
      {required final String city,
      required final String vacancyName,
      required final String body,
      required final String grade,
      required final String minsalary,
      required final String maxsalary,
      required final String type,
      required final String stage,
      required final String schedule,
      required final String abilities,
      required final int categoryId}) = _PostVacancyCoreProfileEvent;
}

@freezed
abstract class CoreProfileState with _$CoreProfileState {
  const factory CoreProfileState.initial() = InitialCoreProfileState;

  const factory CoreProfileState.loading() = LoadingCoreProfileState;

  const factory CoreProfileState.attributes(
      {required final LocalVacancyData localVacancy,
      required final int vacancyId,
      required final List<Category> categories,
      required final FormzStatus status}) = AttributesCoreProfileState;

  const factory CoreProfileState.error({required final String message}) =
      ErrorCoreProfileState;
}
