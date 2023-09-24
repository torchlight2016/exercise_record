import 'package:exercise_record/data/dtos/request/exercise_response_dto.dart';
import 'package:exercise_record/domain/entities/exercise.dart';

extension ExerciseMapper on ExerciseResponseDTO {
  Exercise toEntity() {
    return Exercise(exerciseType: type, content: content, dateTime: createdAt);
  }
}
