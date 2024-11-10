import 'package:json_annotation/json_annotation.dart';

part 'barn.g.dart';

@JsonSerializable()
class Barn {
  final String barnId;
  final String farmId;
  final String barnName;

  Barn({
    required this.barnId,
    required this.farmId,
    required this.barnName,
  });

  factory Barn.fromJson(Map<String, dynamic> json) => _$BarnFromJson(json);

  Map<String, dynamic> toJson() => _$BarnToJson(this);
}
