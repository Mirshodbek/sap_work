import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/screens/employer/employer.dart';

part 'announce_e_cubit.freezed.dart';

part 'announce_e_state.dart';

class AnnounceECubit extends Cubit<AnnounceEState> {
  late PageController titleAnnounceController;
  late PageController announceController;
  late TextEditingController titleAnnounce;
  late TextEditingController description;
  late TextEditingController fromMoney;
  late TextEditingController toMoney;
  List<AnnounceE> _announce = [];
  List<String> _announcesTitle = [];
  List<String> _employmentTypes = [];
  List<String> _tools = [];
  List<SkillState> _skills = [];
  String title = '';
  String skill = '';
  String country = '';
  bool isAdd = false;

  AnnounceECubit() : super(AnnounceEState.loading()) {
    _init();
  }

  void _init() {
    titleAnnounceController = PageController();
    announceController = PageController();
    titleAnnounce = TextEditingController();
    description = TextEditingController();
    fromMoney = TextEditingController();
    toMoney = TextEditingController();
    _announcesTitle = Lists.announceTitleList;
    _employmentTypes = Lists.employmentTypes;
    _skills = Lists.skillList;
    _updateState();
  }

  void addTools(String text) {
    if (text.isNotEmpty) {
      _tools = [..._tools, text];
      _updateState();
    }
  }

  void deleteTools(String text) {
    _tools = List.from(_tools)..remove(text);
    _updateState();
  }

  void setCountry(String country) {
    this.country = country;
    _updateState();
  }

  void selectEmploymentType(String title) {
    this.title = title;
    _updateState();
  }

  void setSkill(String skill) {
    this.skill = skill;
    _updateState();
  }

  void addAnnounce() {
    isAdd = true;
    _updateState();
  }

  String get titleAnn => titleAnnounce.text;

  List<String> get tools => _tools.isNotEmpty ? _tools : [];

  String get desc => description.text.isNotEmpty ? description.text : "";

  String get fromM => fromMoney.text.isNotEmpty ? fromMoney.text : "";

  String get toM => toMoney.text.isNotEmpty ? toMoney.text : "";

  void publishAnnounce() {
    if (titleAnn.isNotEmpty) {
      _announcesTitle = [..._announcesTitle, titleAnn];
      _announce = [
        ..._announce,
        AnnounceE(
          titleAnn,
          tools,
          country,
          desc,
          fromM,
          toM,
          title,
          skill,
        ),
      ];
      _updateState();
      forward(true);
    }
  }

  void previous(bool twice) {
    titleAnnounceController.previousPage(
        duration: Duration(milliseconds: 100), curve: Curves.linear);
 if(twice)   announceController.previousPage(
        duration: Duration(milliseconds: 100), curve: Curves.linear);
  }

  void forward(bool twice) {
    titleAnnounceController.nextPage(
        duration: Duration(milliseconds: 100), curve: Curves.linear);
  if(twice)  announceController.nextPage(
        duration: Duration(milliseconds: 100), curve: Curves.linear);
  }

  void _updateState() {
    emit(AnnounceEState.loaded(
      announce: _announce,
      employmentTypes: _employmentTypes,
      announceTitles: _announcesTitle,
      tools: _tools,
      skills: _skills,
      country: country,
      title: title,
      skill: skill,
      isAdd: isAdd,
    ));
  }

  @override
  Future<void> close() {
    titleAnnounceController.dispose();
    announceController.dispose();
    titleAnnounce.dispose();
    description.dispose();
    fromMoney.dispose();
    toMoney.dispose();
    return super.close();
  }
}
