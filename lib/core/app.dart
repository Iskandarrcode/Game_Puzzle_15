import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puzzle15/logic/blocs/pazzle_bloc/pazzle_bloc.dart';
import 'package:puzzle15/logic/blocs/pazzle_bloc/pazzle_event.dart';
import 'package:puzzle15/ui/screens/pazzle_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => PuzzleBloc()..add(PuzzleInitialized()),
        child: const PuzzlePage(),
      ),
    );
  }
}
