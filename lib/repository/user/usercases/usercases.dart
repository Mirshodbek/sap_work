import 'package:either_dart/either.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/local_data.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/models/local_resume/resume.dart';
import 'package:sap_work/models/params_user/local_resumes/resumes.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';

import '../user_repository.dart';

class GetProfileUser implements UseCase<TypeProfileUser, NoParams> {
  final UserRepositoryBase repository;

  GetProfileUser(this.repository);

  @override
  Future<Either<Failure, TypeProfileUser>> call(NoParams params) async {
    return await repository.getProfileUser();
  }
}

class GetLocalResumes
    implements UseCase<List<LocalResumeData>, ParamsLocalResumes> {
  final UserLocalDataBase localData;

  GetLocalResumes(this.localData);

  @override
  Future<Either<Failure, List<LocalResumeData>>> call(
      ParamsLocalResumes params) async {
    if (params.writeResumes) {
      await localData.localResumes(params.resumes);
    }
    try {
      return Right(await localData.getLocalResumes());
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}

class GetLocalResume implements UseCase<LocalResumeData, ParamsLocalResumes> {
  final UserLocalDataBase localData;

  GetLocalResume(this.localData);

  @override
  Future<Either<Failure, LocalResumeData>> call(
      ParamsLocalResumes params) async {
    if (params.writeResume) {
      await localData.localResume(params.resume!);
    }
    try {
      return Right(await localData.getLocalResume());
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}

class GetCategoriesUser implements UseCase<List<Feature>, NoParams> {
  final UserRepositoryBase repository;

  GetCategoriesUser(this.repository);

  @override
  Future<Either<Failure, List<Feature>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}

class GetSpheresUser implements UseCase<List<Feature>, NoParams> {
  final UserRepositoryBase repository;

  GetSpheresUser(this.repository);

  @override
  Future<Either<Failure, List<Feature>>> call(NoParams params) async {
    return await repository.getSpheres();
  }
}

class GetResumesUser implements UseCase<List<Resume>, NoParams> {
  final UserRepositoryBase repository;

  GetResumesUser(this.repository);

  @override
  Future<Either<Failure, List<Resume>>> call(NoParams params) async {
    return await repository.getResumesUser();
  }
}

class GetResumeUser implements UseCase<Resume, int> {
  final UserRepositoryBase repository;

  GetResumeUser(this.repository);

  @override
  Future<Either<Failure, Resume>> call(int id) async {
    return await repository.getResumeUser(id);
  }
}

class GetFeedbacksResume implements UseCase<List<FeedbackResume>, int> {
  final UserRepositoryBase repository;

  GetFeedbacksResume(this.repository);

  @override
  Future<Either<Failure, List<FeedbackResume>>> call(int id) async {
    return await repository.getFeedbacksResume(id);
  }
}

class GetChatsUser implements UseCase<List<Chat>, int> {
  final UserRepositoryBase repository;

  GetChatsUser(this.repository);

  @override
  Future<Either<Failure, List<Chat>>> call(int id) async {
    return await repository.getChats(id);
  }
}

class GetVacancyUser implements UseCase<Vacancy, int> {
  final UserRepositoryBase repository;

  GetVacancyUser(this.repository);

  @override
  Future<Either<Failure, Vacancy>> call(int id) async {
    return await repository.getVacancyUser(id);
  }
}

class GetRecommendOrPopularVacanciesUser implements UseCase<PaginationVacancy, int> {
  final UserRepositoryBase repository;

  GetRecommendOrPopularVacanciesUser(this.repository);

  @override
  Future<Either<Failure, PaginationVacancy>> call(int page) async {
    return await repository.getRecommendOrPopularVacanciesUser(page);
  }
}

class GetFavoriteVacanciesUser implements UseCase<List<Vacancy>, NoParams> {
  final UserRepositoryBase repository;

  GetFavoriteVacanciesUser(this.repository);

  @override
  Future<Either<Failure, List<Vacancy>>> call(NoParams params) async {
    return await repository.getFavoriteVacanciesUser();
  }
}

class GetInvitesVacanciesUser implements UseCase<List<Invite>, NoParams> {
  final UserRepositoryBase repository;

  GetInvitesVacanciesUser(this.repository);

  @override
  Future<Either<Failure, List<Invite>>> call(NoParams params) async {
    return await repository.getInvitesUser();
  }
}


class GetAllChatsUser implements UseCase<List<AllChats>, NoParams> {
  final UserRepositoryBase repository;

  GetAllChatsUser(this.repository);

  @override
  Future<Either<Failure, List<AllChats>>> call(NoParams params) async {
    return await repository.getAllChats();
  }
}
