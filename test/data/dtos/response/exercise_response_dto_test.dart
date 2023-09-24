import 'dart:convert';

import 'package:exercise_record/data/dtos/request/exercise_response_dto.dart';
import 'package:exercise_record/domain/entities/exercise_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const String jsonData =
      '{"createdAt":"2023-09-23T09:01:17.218Z","content":"fighting","type":"lunge","id":"1"}';

  final jsonDto = ExerciseResponseDTO(
      content: "fighting",
      createdAt: DateTime.utc(2023, 9, 23, 9, 1, 17, 218).toLocal(),
      type: ExerciseType.lunge,
      id: "1");

  group('exercise_response_dto', () {
    test('from json string to object', () {
      final result = ExerciseResponseDTO.fromJson(jsonDecode(jsonData));

      expect(result, equals(jsonDto));
    });

    test('from object to json string', () {
      final result = jsonDto.toJson();
      expect(result, jsonDecode(jsonData));
    });
  });
}
