import 'package:flutter/material.dart';
import 'package:recipe/screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.blue,
            secondary: Color.fromARGB(255, 18, 80, 131),
          ),
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: theme.textTheme.copyWith(
            headline6: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 16,
                color: Colors.black),
          )),
      home: CategoriesScreen(),
    );
  }
}
