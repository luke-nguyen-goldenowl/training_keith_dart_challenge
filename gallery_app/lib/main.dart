import 'package:flutter/material.dart';
import 'package:gallery_app/configs/routes/routes_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),
      onGenerateRoute: onGenerateRoute,
      initialRoute: "/",
    );
  }
}
