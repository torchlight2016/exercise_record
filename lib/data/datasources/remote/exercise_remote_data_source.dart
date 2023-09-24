import 'package:exercise_record/data/datasources/remote/client/exercise_api_client.dart';
import 'package:exercise_record/data/dtos/request/exercise_response_dto.dart';
import 'package:exercise_record/data/dtos/response/exercise_request_dto.dart';

abstract class ExerciseRemoteDataSource {
  Future<void> addExercise(ExerciseRequestDTO requestDTO);
  Future<List<ExerciseResponseDTO>> getExerciseList(int page, int limit);
}

class ExerciseRemoteDataSourceImpl implements ExerciseRemoteDataSource {
  final ExerciseApiClient exerciseApiClient;

  ExerciseRemoteDataSourceImpl(this.exerciseApiClient);

  @override
  Future<void> addExercise(ExerciseRequestDTO requestDTO) {
    return exerciseApiClient.addExercise(requestDTO);
  }

  @override
  Future<List<ExerciseResponseDTO>> getExerciseList(int page, int limit) {
    return exerciseApiClient.getExerciseList(page, limit);
  }
}
