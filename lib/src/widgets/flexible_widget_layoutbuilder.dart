import 'package:flutter/material.dart';

/// An error will get generated without the second Flexible widget:
/// A RenderFlex overflowed by 4.0 pixels on the bottom.
class FlexibleWidgetLayoutBuilder extends StatelessWidget {
  const FlexibleWidgetLayoutBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxHeight < 200) {
              return ElevatedButton(
                onPressed: () {},
                child: const Text('See image'),
              );
            } else {
              return Image.network('https://source.unsplash.com/random');
            }
          }),
        ),
        Flexible(
          child: Container(
            height: 400,
            // height: 600,
            color: Colors.green,
            child: getText('Flexible 400'),
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
