import 'package:flutter/material.dart';

/// The first spacer: defaults to a flex of one
/// The second spacer: gives twice the space between Middle and End than Begin and Middle
class SpacerContainer extends StatelessWidget {
  final bool isSpacerOnly;

  SpacerContainer({required this.isSpacerOnly});

  @override
  Widget build(BuildContext context) {
    return isSpacerOnly ? buildSpacerOnly() : buildSpacerVsMainAxisAlignment();
  }

  Column buildSpacerOnly() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        title('SpacerOnly: $isSpacerOnly'),
        Container(
            child: title('Begin: defaults to a flex of one'),
            height: 120,
            color: Colors.green),
        // Defaults to a flex of one.
        const Spacer(),
        Container(
            child: title(
                'Middle: gives twice the space between Middle and End than Begin and Middle.'),
            height: 120,
            color: Colors.blue),
        // Gives twice the space between Middle and End than Begin and Middle.
        const Spacer(flex: 2),
        Container(child: title('End'), height: 120, color: Colors.red),
      ],
    );
  }

  // Spacer has priority over mainAxisAlignment
  Column buildSpacerVsMainAxisAlignment() {
    return Column(
      // this is ignored, better remove it.
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        title('SpacerOnly: $isSpacerOnly'),
        Container(height: 120, color: Colors.green),
        Container(height: 120, color: Colors.blue),
        Container(height: 120, color: Colors.red),
        const Spacer(),
      ],
    );
  }

  Text title(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
