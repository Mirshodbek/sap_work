part of 'announce_e_cubit.dart';

@freezed
abstract class AnnounceEState with _$AnnounceEState{
  const factory AnnounceEState.loading()=_LoadingAnnounceEState;
  const factory AnnounceEState.loaded({
    required final List<AnnounceE> announce,
    required final List<String> announceTitles,
    required final List<String> employmentTypes,
    required final List<String> tools,
    required final List<SkillState> skills,
    required final String country,
    required final String title,
    required final String skill,
    required final bool isAdd,
})=_LoadedAnnounceEState;
}

