import 'package:flutter/material.dart';
import 'package:recipee_app/views/home_page.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
      )),
      home:  HomePage(),
    );
  }
}
