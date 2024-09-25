import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'film_provider.dart';
import 'film_detail.dart';
import 'film_list.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FilmProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FilmList(),
        '/details': (context) => FilmDetail(),
      },
    );
  }
}
