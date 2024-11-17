import 'package:template/core/network/dummyjson_api_client/models/pageable_list_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todos.g.dart';

@JsonSerializable()
class Todos with PageableListResponse {
  final Iterable<Todos> todos;

  Todos({
    required this.todos,
  });

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);

  Map<String, dynamic> toJson() => _$TodosToJson(this);
}
