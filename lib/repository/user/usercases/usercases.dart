import 'package:either_dart/either.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/local_data.dart';
import 'package:sap_work/models/contact_user/contact.dart';
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

class GetContactsUser implements UseCase<List<ContactUser>, NoParams> {
  final UserRepositoryBase repository;

  GetContactsUser(this.repository);

  @override
  Future<Either<Failure, List<ContactUser>>> call(NoParams params) async {
    return await repository.getContactsUser();
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

class GetCategoriesUser implements UseCase<List<Category>, NoParams> {
  final UserRepositoryBase repository;

  GetCategoriesUser(this.repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await repository.getCategories();
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
