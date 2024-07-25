import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puzzle15/core/app.dart'; // Adjust the path if needed
import 'package:puzzle15/logic/blocs/pazzle_bloc/pazzle_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PuzzleBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
