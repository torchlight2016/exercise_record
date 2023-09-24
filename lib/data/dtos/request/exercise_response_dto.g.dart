// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseResponseDTO _$$_ExerciseResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ExerciseResponseDTO(
      id: json['id'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      content: json['content'] as String,
      type: const ExerciseTypeConverter().fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$_ExerciseResponseDTOToJson(
        _$_ExerciseResponseDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'content': instance.content,
      'type': const ExerciseTypeConverter().toJson(instance.type),
    };
