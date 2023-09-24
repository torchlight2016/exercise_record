import 'package:exercise_record/presentation/widgets/bottom_ui.dart';
import 'package:exercise_record/presentation/widgets/main_ui.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(child: MainUI()),
          SizedBox(
            height: 50,
            child: BottomUI(),
          )
        ],
      ),
    );
  }
}
