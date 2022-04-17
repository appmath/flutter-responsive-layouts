import 'package:flutter/material.dart';

/// The main difference between MediaQuery and LayoutBuilder is that MediaQuery
/// uses the complete context of the screen rather than just the size of your
/// particular widget, whereas LayoutBuilder can determine the maximum width
/// and height of a particular widget
class MediaQueryVsLayoutBuilderWidget extends StatefulWidget {
  const MediaQueryVsLayoutBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MediaQueryVsLayoutBuilderWidget> createState() =>
      _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryVsLayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    // return mediaQuery(context, 'MediaQuery');
    // return layoutBuilder(context, 'LayoutBuilder');
    return childLayoutBuilder(context, 'LayoutBuilder');
  }

  Container mediaQuery(BuildContext context, String widget) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.green,
      child: getText('$widget, h: $width, h: $height'),
    );
  }

  Widget layoutBuilder(BuildContext context, String widget) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 600;
      if (isMobile) {
        return Container(
          color: Colors.orange,
          child: Center(
            child: getText('CONTENT'),
          ),
        );
      } else {
        return Row(
          children: [
            Container(
              width: 250,
              color: Colors.blue,
              child: getText('SIDEBAR'),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: getText('CONTENT'),
              ),
            ),
          ],
        );
      }
    });
  }

  Widget childLayoutBuilder(BuildContext context, String widget) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 600;
      if (isMobile) {
        return Container(
          color: Colors.orange,
          child: Center(
            child: getText('CONTENT', false),
          ),
        );
      } else {
        return Row(
          children: [
            Container(
              width: 250,
              color: Colors.blue,
              child: getText('SIDEBAR', false),
            ),
            Expanded(
              child: LayoutBuilder(builder: (context, containerConstraints) {
                bool isSmall = containerConstraints.maxWidth < 400;
                return Container(
                  color: isSmall ? Colors.black : Colors.orange,
                  child: getText(
                      'CONTENT ${containerConstraints.maxWidth}/${constraints.maxWidth}',
                      !isSmall),
                );
              }),
            ),
          ],
        );
      }
    });
  }

  bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.height >= 600;
  }

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.height < 600;
  }

  Center getText(String title, [bool isDark = false]) => Center(
          child: Text(
        title,
        style: TextStyle(
          color: isDark ? Colors.black : Colors.white,
          fontSize: 25,
        ),
      ));
}
