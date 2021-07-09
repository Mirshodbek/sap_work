

import 'package:either_dart/either.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/contact_user/contact.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';

import '../exceptions_failures.dart';

abstract class UserRepositoryBase{
  Future<Either<Failure, TypeProfileUser>> getProfileUser();

  Future<Either<Failure,List<ContactUser>>> getContactsUser();

  Future<Either<Failure, List<Category>>> getCategories();
  Future<Either<Failure, List<Resume>>> getResumesUser();
  Future<Either<Failure, Resume>> getResumeUser(int id);



}