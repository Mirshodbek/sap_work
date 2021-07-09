import 'package:equatable/equatable.dart';
import 'package:sap_work/models/local_resume/resume.dart';

class ParamsLocalResumes extends Equatable {
  final bool writeResumes;
  final List<LocalResumeData> resumes;
  final bool writeResume;
  final LocalResumeData? resume;

  ParamsLocalResumes(
      {this.writeResumes = false,
        this.resumes = const <LocalResumeData>[],
        this.writeResume = false,
        this.resume});

  @override
  List<Object?> get props => [writeResume, resume];
}
