import 'package:json_annotation/json_annotation.dart';

part 'breed.g.dart';

@JsonSerializable()
class Breed {
  final String breedId;
  final String breedName;
  final String breedCode;

  Breed({
    required this.breedId,
    required this.breedName,
    required this.breedCode,
  });

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);

  Map<String, dynamic> toJson() => _$BreedToJson(this);
}
