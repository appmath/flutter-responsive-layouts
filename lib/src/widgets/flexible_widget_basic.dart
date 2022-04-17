
import 'package:flutter/material.dart';

class FlexibleWidgetBasic extends StatelessWidget {
  const FlexibleWidgetBasic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          color: Colors.green,
          child: getText('300'),
        ),
        Flexible(
          flex: 1,
          child: Container(
            height: 250,
            color: Colors.blue,
            child: getText('Flexible 250, flex 1'),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            height: 250,
            color: Colors.red,
            child: getText('Flexible 250, flex 2'),
          ),
        ),
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
