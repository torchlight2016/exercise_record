import 'package:exercise_record/presentation/widgets/bottom_ui.dart';
import 'package:exercise_record/presentation/widgets/exercise_list_widget.dart';
import 'package:exercise_record/presentation/widgets/main_ui.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> mainWidgets = [
    const MainUI(),
    const ExerciseListWidget(),
  ];

  int _stackIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: IndexedStack(
            index: _stackIndex,
            alignment: Alignment.center,
            children: mainWidgets,
          )),
          SizedBox(
            height: 50,
            child: BottomUI(
              onRecordPressed: (String value) {
                setState(() {
                  _stackIndex = 0;
                });
              },
              onViewPressed: (String value) {
                setState(() {
                  _stackIndex = 1;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
