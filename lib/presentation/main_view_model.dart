import 'package:exercise_record/core/result/result.dart';
import 'package:exercise_record/core/value/state_value.dart';
import 'package:exercise_record/domain/entities/exercise.dart';
import 'package:exercise_record/domain/repositories/exercise_repository.dart';
import 'package:flutter/cupertino.dart';

class ExerciseViewModel extends ChangeNotifier {
  final ExerciseRepository exerciseRepository;

  StateValue<List<Exercise>> exerciseValue = InitialState();

  ExerciseViewModel({
    required this.exerciseRepository,
  });

  Future<void> getExerciseList() async {
    final result = await exerciseRepository.getExerciseList(page: 1, limit: 10);
    switch (result) {
      case Success():
        exerciseValue = LoadedState(result.value);
        notifyListeners();
        break;
      case Failure():
        exerciseValue = ErrorState(result.error);
        notifyListeners();
        break;
    }
  }
}
