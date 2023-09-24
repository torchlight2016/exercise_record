import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/core/usecase/usecase.dart';
import 'package:exercise_record/domain/entities/exercise.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';

class GetExerciseUseCase
    extends UseCase<Result<List<Exercise>>, ({int page, int limit})> {
  final ExerciseRepository exerciseRepository;

  GetExerciseUseCase({
    required this.exerciseRepository,
  });

  @override
  Future<Result<List<Exercise>>> execute(param) =>
      exerciseRepository.getExerciseList(page: param.page, limit: param.limit);
}
