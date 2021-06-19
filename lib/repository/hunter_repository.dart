import 'package:sap_work/models/feedback/feedback.dart';
import 'package:sap_work/models/profile/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

abstract class HunterRepositoryBase {
  Stream<List<Vacancy>> getVacancies();

  Stream<List<Chat>> getChats();

  Future<ProfileHunter> getProfileHunter();

  Future<List<FeedbackResume>> getFeedbacks({int id});

  Future<Resume> getResume(int id);

  Stream<List<Resume>> getResumes();
}
