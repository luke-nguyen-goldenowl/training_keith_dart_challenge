import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './screens/home_screen.dart';
import './cubit/app_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: MyHomeScreen(),
      ),
    );
  }
}
