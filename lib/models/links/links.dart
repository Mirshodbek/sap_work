import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'links.g.dart';
@JsonSerializable()
class LinksPagination extends Equatable {
  late final String? url;
  late final String label;
  late final bool active;

  LinksPagination(this.url, this.label, this.active);

  factory LinksPagination.fromJson(Map<String, dynamic> json) =>
      _$LinksPaginationFromJson(json);

  Map<String, dynamic> toJson() => _$LinksPaginationToJson(this);

  @override
  List<Object?> get props => [url, label, active];
}
