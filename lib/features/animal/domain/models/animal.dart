import 'package:json_annotation/json_annotation.dart';

part 'animal.g.dart';

@JsonSerializable()
class Animal {
  final String animalId;
  final String breedId;
  final String farmId;
  final String barnId;
  final String penId;
  final String earTag;
  final String rfid;
  final int birthDate;

  Animal({
    required this.animalId,
    required this.breedId,
    required this.farmId,
    required this.barnId,
    required this.penId,
    required this.earTag,
    required this.rfid,
    required this.birthDate,
  });

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}
