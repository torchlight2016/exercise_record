import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/core/result/result_error.dart';
import 'package:exercise_record/domain/entities/exercise.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';
import 'package:exercise_record/domain/usecases/get_exercises_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExerciseRepository extends Mock implements ExerciseRepository {}

void main() {
  late GetExerciseUseCase usecase;
  late MockExerciseRepository mockExerciseRepository;

  setUp(() {
    mockExerciseRepository = MockExerciseRepository();
    usecase = GetExerciseUseCase(exerciseRepository: mockExerciseRepository);
  });

  group('GetExerciseUseCase', () {
    test('get exercise', () async {
      final success = Success(List.generate(
          10,
          (index) => Exercise(
                exerciseType: ExerciseType.legRaises,
                content: "fighting + $index",
                dateTime: DateTime.now(),
              )));

      when(() => mockExerciseRepository.getExerciseList(page: 1, limit: 10))
          .thenAnswer((_) async => success);

      final result = await usecase.execute((page: 1, limit: 10));

      expect(result, isA<Success>());
      expect((result as Success).value, equals(success.value));
    });

    test('network connection error', () async {
      final failure =
          Failure<List<Exercise>>(NetworkError('No network connection'));

      when(() => mockExerciseRepository.getExerciseList(page: 1, limit: 10))
          .thenAnswer((_) async => failure);

      final result = await usecase.execute((page: 1, limit: 10));
      expect(result, isA<Failure>());
    });
  });
}
