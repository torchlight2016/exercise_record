import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/domain/entities/exercise.dart';

abstract class ExerciseRepository {
  Future<Result<void>> addExercise({
    required String content,
    required DateTime dateTime,
  });

  Future<Result<List<Exercise>>> getExerciseList({
    required int page,
    required int limit,
  });
}
