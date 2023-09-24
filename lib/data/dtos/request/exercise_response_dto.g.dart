// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseResponseDTO _$$_ExerciseResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ExerciseResponseDTO(
      id: json['id'] as String,
      createAt: const DateTimeConverter().fromJson(json['createAt'] as String),
      content: json['content'] as String,
      type: $enumDecode(_$ExerciseTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ExerciseResponseDTOToJson(
        _$_ExerciseResponseDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': const DateTimeConverter().toJson(instance.createAt),
      'content': instance.content,
      'type': _$ExerciseTypeEnumMap[instance.type]!,
    };

const _$ExerciseTypeEnumMap = {
  ExerciseType.lunge: 'lunge',
  ExerciseType.squat: 'squat',
  ExerciseType.pushUp: 'pushUp',
  ExerciseType.legRaises: 'legRaises',
};
