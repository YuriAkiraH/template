// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todos _$TodosFromJson(Map<String, dynamic> json) => Todos(
      todos: (json['todos'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>)),
    )
      ..total = (json['total'] as num?)?.toInt()
      ..limit = (json['limit'] as num?)?.toInt()
      ..skip = (json['skip'] as num?)?.toInt();

Map<String, dynamic> _$TodosToJson(Todos instance) => <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'skip': instance.skip,
      'todos': instance.todos.toList(),
    };
