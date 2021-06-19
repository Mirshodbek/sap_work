import 'dart:convert';

import 'package:sap_work/data_provider/prof_provider.dart';
import 'package:sap_work/data_provider/rest_provider.dart';
import 'package:sap_work/models/feedback/feedback.dart';
import 'package:sap_work/models/profile/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class HunterRepository extends HunterRepositoryBase {
  final _provider = RestProvider();
  final _profProvider = ProfProvider();

  HunterRepository();


  @override
  Stream<List<Chat>> getChats() async* {
    yield LocalRepository.chatList;
  }

  @override
  Stream<List<Vacancy>> getVacancies() async* {
    yield await _provider.getVacancy();
  }

  @override
  Future<ProfileHunter> getProfileHunter() async {
    return await _profProvider.profileHunter();
  }

  @override
  Future<List<FeedbackResume>> getFeedbacks({int id = 1}) async {
    return await _profProvider.feedbackHunter(id: id);
  }

  @override
  Stream<List<Resume>> getResumes() async*{
   yield await _profProvider.resumesHunter();
  }

  @override
  Future<Resume> getResume(int id) async{
    return await _profProvider.resumeHunter(id);
  }
}
