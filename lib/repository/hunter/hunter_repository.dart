import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:http/http.dart' as http;

abstract class HunterRepositoryBase {
  Stream<List<Vacancy>> getVacancies(
      {String grade = '',
      String stage = '',
      String city,
      String lang = '',
      String schedule = '',
      String category = '',
      String type = '',
      String minsalary = '',
      String maxsalary = ''});

  Future<List<Vacancy>> getFavoriteVacancies();

  Future<http.Response> clickFavoriteVacancy(String endPoint, int id);

  Future<http.Response> postFeedback(int resumeId, int vacancyId);

  Future<List<FeedbackResume>> getFeedbacks(int id);

  Stream<List<Chat>> getMessages(int id);

  Future<http.Response> postMessage(int id, String text);

  Future<TypeProfileUser> getProfile();

  Future<http.Response> createResume(String name,
      List<Map<String, dynamic>> stages, List<Map<String, dynamic>> grades,
      String emails, String phones);

  Stream<List<Resume>> getResumes();

  Future<Resume> getResume(int id);

  Future<String> addFileToResume(int id, String filename);

  Future<http.Response> editResumeName(int id, String name);

  Future<http.Response> activatedDeactivatedResume(String endPoint, int id);
}
