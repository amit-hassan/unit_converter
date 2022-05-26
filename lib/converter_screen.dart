import 'package:flutter/material.dart';
import 'package:unit_converter_app/category.dart';
import 'package:unit_converter_app/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
class ConverterScreen extends StatelessWidget {

  /// Color for this [Category]
  final Color color;

  ///Units for this [Category]
  final List<Unit> units;

  // TODO: Pass in the [Category]'s color
  const ConverterScreen({
    required this.units,
    required this.color,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      // TODO: Set the color for this Container
      return Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              unit.name!,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
