import 'package:flutter/material.dart';

import '../util/text.dart';

/// A widget that sizes its child to the child's intrinsic height.
/// This class is useful, for example, when unlimited height is available
/// and you would like a child that would otherwise attempt to expand infinitely
/// to instead size itself to a more reasonable height.
class IntrinsicHeightCardRow extends StatelessWidget {
  const IntrinsicHeightCardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                'https://source.unsplash.com/random?sig=1',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Expanded(
              child: Text(
                text,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
