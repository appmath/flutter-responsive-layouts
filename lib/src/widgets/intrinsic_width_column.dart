import 'package:flutter/material.dart';

import '../util/text.dart';

/// Without IntrinsicWidth the containers will look like this:
///                   ==================
///                      =============
///                         =======
///
/// With IntrinsicWidth and CrossAxisAlignment.stretch:
///                   ==================
///                   ==================
///                   ==================
///
/// A widget that sizes its child to the child's intrinsic height.
/// This class is useful, for example, when unlimited height is available
/// and you would like a child that would otherwise attempt to expand infinitely
/// to instead size itself to a more reasonable height.
class IntrinsicWidthColumn extends StatelessWidget {
  const IntrinsicWidthColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 50,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
