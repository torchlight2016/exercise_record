import 'package:dio/dio.dart';
import 'package:exercise_record/data/datasources/remote/client/exercise_api_client.dart';
import 'package:exercise_record/data/datasources/remote/exercise_remote_data_source.dart';
import 'package:exercise_record/data/dtos/request/exercise_response_dto.dart';
import 'package:exercise_record/data/dtos/response/exercise_request_dto.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExerciseApiClient extends Mock implements ExerciseApiClient {}

void main() {
  MockExerciseApiClient mockExerciseApiClient = MockExerciseApiClient();
  ExerciseRemoteDataSourceImpl exerciseRemoteDataSourceImpl =
      ExerciseRemoteDataSourceImpl(mockExerciseApiClient);

  final exerciseList = List.generate(
      10,
      (index) => ExerciseResponseDTO(
          id: (index + 1).toString(),
          createAt: DateTime.now().copyWith(minute: index),
          content: 'fighting #${index + 1}',
          type: ExerciseType.lunge));

  group('getExerciseList', () {
    test('get exercise list', () async {
      when(() => mockExerciseApiClient.getExerciseList(0, 10))
          .thenAnswer((_) async => exerciseList);

      final result = await exerciseRemoteDataSourceImpl.getExerciseList(0, 10);

      expect(result, equals(exerciseList));
    });

    test('network error', () async {
      final dioException = DioException.connectionError(
          requestOptions: RequestOptions(), reason: 'no network connection');
      when(() => mockExerciseApiClient.getExerciseList(0, 10))
          .thenThrow(dioException);
      final call = exerciseRemoteDataSourceImpl.getExerciseList;
      expect(() => call(0, 10), throwsA(const TypeMatcher<DioException>()));
    });
  });

  group('addExerciseList', () {
    final requestDTO =
        ExerciseRequestDTO(content: 'fighting', createAt: DateTime.now());

    test('add exercise list', () async {
      when(() => mockExerciseApiClient.addExercise(requestDTO))
          .thenAnswer((_) async => () {});

      mockExerciseApiClient.addExercise(requestDTO);

      verify(() => exerciseRemoteDataSourceImpl.addExercise(requestDTO));
    });

    test('network connection error', () async {
      final dioException = DioException.connectionError(
          requestOptions: RequestOptions(), reason: 'no network connection');
      when(() => mockExerciseApiClient.addExercise(requestDTO))
          .thenThrow(dioException);
      final call = exerciseRemoteDataSourceImpl.addExercise;
      expect(
          () => call(requestDTO), throwsA(const TypeMatcher<DioException>()));
    });
  });
}
