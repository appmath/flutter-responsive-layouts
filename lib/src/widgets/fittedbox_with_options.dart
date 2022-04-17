import 'package:flutter/material.dart';

class FittedBoxWithOptions extends StatelessWidget {
  const FittedBoxWithOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        width: 300,
        height: 200,
        child: const FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.scaleDown,
          child: Center(
            child: Text(
              'Flutter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 64,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
