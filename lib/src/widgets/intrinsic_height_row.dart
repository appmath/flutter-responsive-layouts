import 'package:flutter/material.dart';

class IntrinsicHeightRow extends StatelessWidget {
  const IntrinsicHeightRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 100, width: 50, color: Colors.blue),
          Container(height: 250, width: 50, color: Colors.red),
          Container(height: 150, width: 50, color: Colors.green),
        ],
      ),
    );
  }
}
