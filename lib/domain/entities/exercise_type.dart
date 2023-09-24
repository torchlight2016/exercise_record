enum ExerciseType {
  lunge('런지'),
  squat('스쿼트'),
  pushUp('푸쉬업'),
  legRaises('레그레이즈');

  final String displayName;
  const ExerciseType(this.displayName);

  factory ExerciseType.getValue(String name) {
    return ExerciseType.values.firstWhere((value) => value.name == name);
  }
}
