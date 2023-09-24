import 'package:dio/dio.dart';
import 'package:exercise_record/data/datasources/remote/client/exercise_api_client.dart';
import 'package:exercise_record/data/datasources/remote/exercise_remote_data_source.dart';
import 'package:exercise_record/data/respositoies/exercise_repository_impl.dart';
import 'package:exercise_record/presentation/main_screen.dart';
import 'package:exercise_record/presentation/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // Provider.debugCheckInvalidValueType = null;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise Record',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
          create: (_) => ExerciseViewModel(
              exerciseRepository: ExerciseRepositoryImpl(
                  ExerciseRemoteDataSourceImpl(ExerciseApiClient(Dio())))),
          child: MainScreen(title: 'Exercise Record')),
    );
  }
}
