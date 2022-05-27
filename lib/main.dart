import 'package:flutter/material.dart';
import 'package:unit_converter_app/category_route.dart';

/// The function that is called when main.dart is run.
void main() {
  runApp(const UnitConverterApp());
}

/// This widget is the root of our application.
class UnitConverterApp extends StatelessWidget {

  const UnitConverterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.grey[600],
        ),
        // This colors the [InputOutlineBorder] when it is selected
        primaryColor: Colors.grey[500],
        textSelectionTheme:
          TextSelectionThemeData(selectionHandleColor: Colors.green[500])
      ),
      home: const CategoryRoute()
    );
  }
}

