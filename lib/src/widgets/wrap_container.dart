import 'package:flutter/material.dart';

class WrapContainer extends StatelessWidget {
  const WrapContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        // direction: Axis.vertical,
        spacing: 4, // Horizontal space
        runSpacing: 64, // Vertical space
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 100, height: 100, color: Colors.blue),
          Container(width: 100, height: 100, color: Colors.yellow),
          Container(width: 100, height: 100, color: Colors.green),
          Container(width: 100, height: 100, color: Colors.orange),
        ],
      ),
    );
  }
}
