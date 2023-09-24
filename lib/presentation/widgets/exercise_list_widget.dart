import 'package:exercise_record/core/value/state_value.dart';
import 'package:exercise_record/presentation/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExerciseListWidget extends StatefulWidget {
  const ExerciseListWidget({Key? key}) : super(key: key);

  @override
  State<ExerciseListWidget> createState() => _ExerciseListWidgetState();
}

class _ExerciseListWidgetState extends State<ExerciseListWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<ExerciseViewModel>().getExerciseList());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExerciseViewModel>(
      builder: (BuildContext context, value, Widget? child) {
        return switch (value.exerciseValue) {
          LoadedState(data: final exerciseList) => ListView.separated(
              itemBuilder: (context, index) {
                return Card(child: ListTile(title: Text(exerciseList[index].content)));
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 4,
                );
              },
              itemCount: exerciseList.length),
          (_) => const SizedBox.shrink()
        };
      },
    );
  }
}
