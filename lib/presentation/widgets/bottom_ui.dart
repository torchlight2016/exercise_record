import 'package:exercise_record/presentation/widgets/login_dialog.dart';
import 'package:flutter/material.dart';

class BottomUI extends StatefulWidget {
  final void Function(String value) onRecordPressed;
  final void Function(String value) onViewPressed;

  const BottomUI(
      {Key? key, required this.onRecordPressed, required this.onViewPressed})
      : super(key: key);

  @override
  State<BottomUI> createState() => _BottomUIState();
}

class _BottomUIState extends State<BottomUI> {
  bool _isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: _isLogin
                ? () {
                    widget.onRecordPressed('lunge');
                  }
                : null,
            child: const Text('운동 기록하기 ')),
        ElevatedButton(
            onPressed: _isLogin
                ? () {
                    widget.onViewPressed('lunge');
                  }
                : null,
            child: const Text('운동 기록보기 ')),
        ElevatedButton(
            onPressed: () async {
              _isLogin = await LoginDialog.show(context);
              setState(() {});
            },
            child: const Text('운동 로그인 '))
      ],
    );
  }
}
