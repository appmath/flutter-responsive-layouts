import 'package:flutter/material.dart';

/// Shows a text that says Portrait or Landscape depending on the orientation
class OrientationMediaQueryWidget extends StatefulWidget {
  const OrientationMediaQueryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<OrientationMediaQueryWidget> createState() =>
      _OrientationMediaQueryWidgetState();
}

class _OrientationMediaQueryWidgetState
    extends State<OrientationMediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child:
            getText(isPortraitMode(context) ? 'MQ: Portrait' : 'MQ: Landscape'),
      ),
    );
  }

  bool isPortraitMode(BuildContext context) {
    print(MediaQuery.of(context).orientation);
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  Center getText(String title) => Center(
          child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ));
}
