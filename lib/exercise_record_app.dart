import 'package:flutter/material.dart';

class ExerciseRecordApp extends StatefulWidget {
  const ExerciseRecordApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ExerciseRecordApp> createState() => _ExerciseRecordAppState();
}

class _ExerciseRecordAppState extends State<ExerciseRecordApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
