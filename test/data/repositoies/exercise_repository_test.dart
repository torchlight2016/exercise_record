import 'package:dio/dio.dart';
import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/data/datasources/remote/exercise_remote_data_source.dart';
import 'package:exercise_record/data/dtos/request/exercise_response_dto.dart';
import 'package:exercise_record/data/mapper/exercise_mapper.dart';
import 'package:exercise_record/data/respositoies/exercise_repository_impl.dart';
import 'package:exercise_record/domain/entities/exercise.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExerciseRemoteDataSource extends Mock
    implements ExerciseRemoteDataSource {}

void main() {
  MockExerciseRemoteDataSource mockExerciseRemoteDataSource =
      MockExerciseRemoteDataSource();
  ExerciseRepository exerciseRepository =
      ExerciseRepositoryImpl(mockExerciseRemoteDataSource);

  group('getExerciseList', () {
    final responseDtoList = List.generate(
        10,
        (index) => ExerciseResponseDTO(
            id: (index + 1).toString(),
            createdAt: DateTime.now().copyWith(minute: index),
            content: 'fighting #${index + 1}',
            type: ExerciseType.lunge));

    test('get exercise list ', () async {
      when(() => mockExerciseRemoteDataSource.getExerciseList(0, 10))
          .thenAnswer((_) => Future.value(responseDtoList));

      final result =
          await exerciseRepository.getExerciseList(page: 0, limit: 10);

      expect(result, isA<Success>());
      expect((result as Success<List<Exercise>>).value,
          responseDtoList.map((e) => e.toEntity()).toList());
    });

    test('network error', () async {
      final dioException = DioException.connectionError(
          requestOptions: RequestOptions(), reason: 'no network connection');

      when(() => mockExerciseRemoteDataSource.getExerciseList(0, 10))
          .thenThrow(dioException);

      final call = exerciseRepository.getExerciseList;

      expect(() => call(page: 0, limit: 10),
          throwsA(const TypeMatcher<DioException>()));
    });
  });
}
