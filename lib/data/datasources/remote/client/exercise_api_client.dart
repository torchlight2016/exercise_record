import 'package:dio/dio.dart';
import 'package:exercise_record/data/dtos/request/exercise_response_dto.dart';
import 'package:exercise_record/data/dtos/response/exercise_request_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'exercise_api_client.g.dart';

@RestApi(baseUrl: 'https://6507f4c556db83a34d9b7fc1.mockapi.io/api/v1/')
abstract class ExerciseApiClient {
  factory ExerciseApiClient(Dio dio, {String baseUrl}) = _ExerciseApiClient;
  @GET('exercises')
  Future<List<ExerciseResponseDTO>> getExerciseList(
      @Query('page') int page, @Query('limit') int limit);

  @POST('exercises')
  Future<void> addExercise(@Body() ExerciseRequestDTO exercise);
}
