import 'package:exercise_record/data/dtos/converter/date_time_converter.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_response_dto.freezed.dart';
part 'exercise_response_dto.g.dart';

@freezed
class ExerciseResponseDTO with _$ExerciseResponseDTO {
  @DateTimeConverter()
  const factory ExerciseResponseDTO({
    required String id,
    required DateTime createAt,
    required String content,
    required ExerciseType type,
  }) = _ExerciseResponseDTO;

  factory ExerciseResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ExerciseResponseDTOFromJson(json);
}
