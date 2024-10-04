import 'package:flutter/material.dart';
import 'package:movieapp/movies/presentation/screens/movie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      home: const MovieScreen()
    );
  }
}

