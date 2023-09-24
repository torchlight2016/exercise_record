import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/core/result/result_error.dart';
import 'package:exercise_record/domain/entities/exercise.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';
import 'package:exercise_record/domain/usecases/add_exercise_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExerciseRepository extends Mock implements ExerciseRepository {}

void main() {
  late MockExerciseRepository mockExerciseRepository;
  late AddExerciseUseCase usecase;

  setUp(() {
    mockExerciseRepository = MockExerciseRepository();
    usecase = AddExerciseUseCase(exerciseRepository: mockExerciseRepository);
  });

  group('addExercise', () {
    test('add exercise', () async {
      String content = 'fighting';
      DateTime dateTime = DateTime.now();
      ExerciseType type = ExerciseType.pushUp;

      when(() => mockExerciseRepository.addExercise(
          type: type,
          content: content,
          dateTime: dateTime)).thenAnswer((_) async => Success(null));

      final result = await usecase.execute((
        type: type,
        content: content,
        dateTime: dateTime,
      ));

      expect(result, isA<Success>());
    });

    test('network connection error', () async {
      String content = 'fighting';
      DateTime dateTime = DateTime.now();
      ExerciseType type = ExerciseType.pushUp;

      final failure =
          Failure<List<Exercise>>(NetworkError('No network connection'));

      when(() => mockExerciseRepository.addExercise(
          type: type,
          content: content,
          dateTime: dateTime)).thenAnswer((_) async => failure);

      final result = await usecase.execute((
        type: type,
        content: content,
        dateTime: dateTime,
      ));

      expect(result, isA<Failure>());
    });
  });
}
