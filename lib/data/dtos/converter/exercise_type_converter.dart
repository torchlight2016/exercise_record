import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:json_annotation/json_annotation.dart';

class ExerciseTypeConverter implements JsonConverter<ExerciseType, String> {
  const ExerciseTypeConverter();

  @override
  ExerciseType fromJson(String json) => ExerciseType.getValue(json);

  @override
  String toJson(ExerciseType object) => object.name;
}
