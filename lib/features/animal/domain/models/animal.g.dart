// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animal _$AnimalFromJson(Map<String, dynamic> json) => Animal(
      animalId: json['animalId'] as String,
      breedId: json['breedId'] as String,
      farmId: json['farmId'] as String,
      barnId: json['barnId'] as String,
      penId: json['penId'] as String,
      earTag: json['earTag'] as String,
      rfid: json['rfid'] as String,
      birthDate: (json['birthDate'] as num).toInt(),
    );

Map<String, dynamic> _$AnimalToJson(Animal instance) => <String, dynamic>{
      'animalId': instance.animalId,
      'breedId': instance.breedId,
      'farmId': instance.farmId,
      'barnId': instance.barnId,
      'penId': instance.penId,
      'earTag': instance.earTag,
      'rfid': instance.rfid,
      'birthDate': instance.birthDate,
    };
