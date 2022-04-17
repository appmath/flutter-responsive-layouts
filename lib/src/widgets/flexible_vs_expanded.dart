import 'package:flutter/material.dart';

/// Expanded(
///  child: Foo(),
/// );
///    --- is equivalent to ---
/// Flexible(
///  fit: FlexFit.tight,
///  child: Foo(),
/// );
///
class FlexibleVsExpandedWidget extends StatelessWidget {
  const FlexibleVsExpandedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              // flex: 1,
              fit: FlexFit.loose,
              child: Container(
                height: 250,
                color: Colors.blue,
                child: getText('Flexible 250, flex 1'),
              ),
            ),
            Flexible(
              // flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height: 250,
                color: Colors.red,
                child: getText('Flexible 250, flex 2'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 250,
                color: Colors.green,
                child: getText('Expanded 250, flex 1'),
              ),
            ),
            Expanded(
              child: Container(
                height: 250,
                color: Colors.orange,
                child: getText('Expanded 250, flex 2'),
              ),
            ),
          ],
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
