import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/data/datasources/remote/exercise_remote_data_source.dart';
import 'package:exercise_record/data/dtos/response/exercise_request_dto.dart';
import 'package:exercise_record/data/mapper/exercise_mapper.dart';
import 'package:exercise_record/domain/entities/exercise.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';

class ExerciseRepositoryImpl extends ExerciseRepository {
  final ExerciseRemoteDataSource remoteDataSource;

  ExerciseRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<void>> addExercise(
      {required String content, required DateTime dateTime}) {
    return Result.wrap(() => remoteDataSource
        .addExercise(ExerciseRequestDTO(content: content, createAt: dateTime)));
  }

  @override
  Future<Result<List<Exercise>>> getExerciseList(
      {required int page, required int limit}) {
    return Result.wrap(() => remoteDataSource
        .getExerciseList(page, limit)
        .then((value) => value.map((e) => e.toEntity()).toList()));
  }
}
