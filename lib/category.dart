import 'package:flutter/material.dart';
import 'package:unit_converter_app/converter_screen.dart';
import 'package:unit_converter_app/unit.dart';

// We use an underscore to indicate that these variables are private.
const _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

/// A custom [Category] widget.
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key? key,
    required this.name,
    required this.color,
    required this.iconLocation,
    required this.units,
  }) : super(key: key);

  /// Navigates to the [ConverterRoute].
  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              elevation: 1.0,
              title: Text(
                name,
                style: Theme.of(context).textTheme.headline4,
              ),
              centerTitle: true,
              backgroundColor: color,
            ),
            body: ConverterScreen(
              color: color,
              units: units,
            ),
          );
        }
    ));
  }

  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            _navigateToConverter(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
