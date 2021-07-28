

import 'package:either_dart/either.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';

import '../exceptions_failures.dart';

abstract class UserRepositoryBase{
  Future<Either<Failure, TypeProfileUser>> getProfileUser();


  Future<Either<Failure, List<Feature>>> getCategories();
  Future<Either<Failure, List<Feature>>> getSpheres();
  Future<Either<Failure, List<Resume>>> getResumesUser();
  Future<Either<Failure, List<Invite>>> getInvitesUser();
  Future<Either<Failure, Resume>> getResumeUser(int id);
  Future<Either<Failure, List<FeedbackResume>>> getFeedbacksResume(int id);

  Future<Either<Failure, List<Chat>>> getChats(int id);
  Future<Either<Failure, List<AllChats>>> getAllChats();
  Future<Either<Failure, Vacancy>> getVacancyUser(int id);
  Future<Either<Failure, PaginationVacancy>> getRecommendOrPopularVacanciesUser(int page);
  Future<Either<Failure, List<Vacancy>>> getFavoriteVacanciesUser();


}