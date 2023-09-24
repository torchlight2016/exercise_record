import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required ExerciseType exerciseType,
    required String content,
    required DateTime dateTime,
  }) = _Exercise;
}
