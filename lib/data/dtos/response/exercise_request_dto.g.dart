// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseRequestDTO _$$_ExerciseRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ExerciseRequestDTO(
      content: json['content'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_ExerciseRequestDTOToJson(
        _$_ExerciseRequestDTO instance) =>
    <String, dynamic>{
      'content': instance.content,
      'createAt': instance.createAt.toIso8601String(),
    };
