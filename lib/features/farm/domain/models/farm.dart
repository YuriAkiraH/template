import 'package:json_annotation/json_annotation.dart';

part 'farm.g.dart';

@JsonSerializable()
class Farm {
  final String farmId;
  final String farmName;

  Farm({
    required this.farmId,
    required this.farmName,
  });

  factory Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);

  Map<String, dynamic> toJson() => _$FarmToJson(this);
}
