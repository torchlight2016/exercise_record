// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseRequestDTO _$$_ExerciseRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ExerciseRequestDTO(
      type: $enumDecode(_$ExerciseTypeEnumMap, json['type']),
      content: json['content'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_ExerciseRequestDTOToJson(
        _$_ExerciseRequestDTO instance) =>
    <String, dynamic>{
      'type': _$ExerciseTypeEnumMap[instance.type]!,
      'content': instance.content,
      'createAt': instance.createAt.toIso8601String(),
    };

const _$ExerciseTypeEnumMap = {
  ExerciseType.lunge: 'lunge',
  ExerciseType.squat: 'squat',
  ExerciseType.pushUp: 'pushUp',
  ExerciseType.legRaises: 'legRaises',
};
