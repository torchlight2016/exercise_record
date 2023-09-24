import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/core/usecase/usecase.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';

class AddExerciseUseCase extends UseCase<Result<void>,
    ({ExerciseType type, String content, DateTime dateTime})> {
  final ExerciseRepository exerciseRepository;

  AddExerciseUseCase({
    required this.exerciseRepository,
  });

  @override
  Future<Result<void>> execute(param) {
    return exerciseRepository.addExercise(
      type: param.type,
      content: param.content,
      dateTime: param.dateTime,
    );
  }
}
