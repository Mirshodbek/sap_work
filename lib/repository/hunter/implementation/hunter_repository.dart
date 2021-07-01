import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:http/http.dart' as http;

class HunterRepository extends HunterRepositoryBase {
  final _vacProvider = VacProvider();
  final _chatProvider = ChatProvider();
  final _profProvider = ProfProvider();

  HunterRepository();

  @override
  Stream<List<Vacancy>> getVacancies(
      {String grade = '',
      String stage = '',
      String city = '',
      String lang = '',
      String schedule = '',
      String category = '',
      String type = '',
      String minsalary = '',
      String maxsalary = ''}) async* {
    yield await _vacProvider.getVacancy(
        grade: grade,
        stage: stage,
        city: city,
        lang: lang,
        schedule: schedule,
        category: category,
        type: type,
        minsalary: minsalary,
        maxsalary: maxsalary);
  }

  @override
  Future<List<Vacancy>> getFavoriteVacancies() async {
    return await _vacProvider.favoriteVacancies();
  }

  @override
  Future<http.Response> clickFavoriteVacancy(String endPoint, int id) async {
    return await _vacProvider.favoriteVacancy(endPoint, id);
  }

  @override
  Future<http.Response> postFeedback(int resumeId, int vacancyId) async {
    return await _vacProvider.postFeedback(resumeId, vacancyId);
  }

  @override
  Stream<List<Message>> getMessages(int id) async* {
    yield await _chatProvider.getMessages(id);
  }

  @override
  Future<http.Response> postMessage(int id, String text) async {
    return await _chatProvider.postMessage(id, text);
  }

  @override
  Future<TypeProfileHunter> getProfile() async {
    return await _profProvider.getProfileHunter();
  }

  @override
  Future<List<FeedbackResume>> getFeedbacks(int id) async {
    return await _chatProvider.getFeedbacksHunter(id);
  }

  @override
  Future<http.Response> createResume(
      String name,
      List<Map<String, dynamic>> stages,
      List<Map<String, dynamic>> grades,
      String emails,
     String phones) async {
    return await _profProvider.createResume(
        name: name,
        stages: stages,
        grades: grades,
        email: emails,
        phone: phones);
  }

  @override
  Stream<List<Resume>> getResumes() async* {
    yield await _profProvider.getResumesHunter();
  }

  @override
  Future<Resume> getResume(int id) async {
    return await _profProvider.getResumeHunter(id);
  }

  @override
  Future<http.Response> editResumeName(int id, String name) async {
    return await _profProvider.editResume(id, name);
  }

  @override
  Future<http.Response> activatedDeactivatedResume(
      String endPoint, int id) async {
    return await _profProvider.activatedDeactivatedResume(endPoint, id);
  }

  @override
  Future<String> addFileToResume(int id, String filename) async {
    return await _profProvider.addFileToResume(id, filename);
  }
}
