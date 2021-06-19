class SkillState {
  final String title;
  final bool value;

  SkillState({required this.title, this.value = false});

  SkillState copyWith({bool? value}) {
    return SkillState(title: this.title, value: value ?? this.value);
  }


}
