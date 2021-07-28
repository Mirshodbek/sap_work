import 'package:equatable/equatable.dart';
import 'package:sap_work/resources/constants.dart';

class ParamsFavorites extends Equatable {
  late final int id;
  late final String type;

  ParamsFavorites({this.id=-1, this.type=EMPTY_STRING});

  @override
  List<Object?> get props => [id, type];
}
