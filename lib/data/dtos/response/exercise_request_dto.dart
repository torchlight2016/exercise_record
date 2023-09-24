import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_request_dto.freezed.dart';
part 'exercise_request_dto.g.dart';

@freezed
class ExerciseRequestDTO with _$ExerciseRequestDTO {
  const factory ExerciseRequestDTO({
    required String content,
    required DateTime createAt,
  }) = _ExerciseRequestDTO;

  factory ExerciseRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$ExerciseRequestDTOFromJson(json);
}
