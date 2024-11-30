import 'package:json_annotation/json_annotation.dart';

part 'dummyjson_error.g.dart';

@JsonSerializable()
class DummyjsonError {
  final String message;

  DummyjsonError({
    required this.message,
  });

  factory DummyjsonError.fromJson(Map<String, dynamic> json) =>
      _$DummyjsonErrorFromJson(json);

  Map<String, dynamic> toJson() => _$DummyjsonErrorToJson(this);
}
