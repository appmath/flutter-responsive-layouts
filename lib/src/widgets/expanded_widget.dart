import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tip: Expanded has to be a direct child of a Row or a Column
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            height: 200,
            child: getText('Expanded flex 1'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 200,
            child: getText('Expanded flex 2'),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey,
            height: 200,
            child: getText('Expanded flex 3'),
          ),
        ),
        Container(
          color: Colors.red,
          height: 400,
          child: getText('Container 400'),
        )
      ],
    );
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
