import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/core/usecase/usecase.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';

class AddExerciseUseCase
    extends UseCase<Result<void>, ({String content, DateTime dateTime})> {
  final ExerciseRepository exerciseRepository;

  AddExerciseUseCase({
    required this.exerciseRepository,
  });

  @override
  Future<Result<void>> execute(param) {
    return exerciseRepository.addExercise(
        content: param.content, dateTime: param.dateTime);
  }
}
