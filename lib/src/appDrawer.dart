import 'package:flutter/material.dart';
import 'package:responsive_layouts/src/util/az_material_colors.dart';
import 'package:responsive_layouts/src/widgets/drawer_widget.dart';
import 'package:responsive_layouts/src/widgets/expanded_widget.dart';
import 'package:responsive_layouts/src/widgets/fittedbox_with_options.dart';
import 'package:responsive_layouts/src/widgets/flexible_widget_basic.dart';
import 'package:responsive_layouts/src/widgets/flexible_widget_layoutbuilder.dart';
import 'package:responsive_layouts/src/widgets/intrinsic_height_card_row.dart';
import 'package:responsive_layouts/src/widgets/intrinsic_height_row.dart';
import 'package:responsive_layouts/src/widgets/intrinsic_width_column.dart';
import 'package:responsive_layouts/src/widgets/media_query_vs_layout_builder.dart';
import 'package:responsive_layouts/src/widgets/orientation_builder_gridview_widget.dart';
import 'package:responsive_layouts/src/widgets/orientation_mediaquery_widget.dart';
import 'package:responsive_layouts/src/widgets/spacer_container.dart';
import 'package:responsive_layouts/src/widgets/wrap_container.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp3();
  }

  MaterialApp buildMaterialApp3() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Layouts',
      // The Mandy red, light theme.
      theme: ThemeData(
        colorSchemeSeed: blueMaterialColor,
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Responsive Layouts Drawers'),
            ),
            drawer: isPortraitMode(context) ? DrawerWidget() : null,
            // drawer: DrawerWidget(),
            body: Row(
              children: [
                if (isMobile(context))
                  Container(
                    color: blueColor[400],
                    width: 200,
                    child: Center(
                      child: getText('Sidebar'),
                    ),
                  ),
                const Expanded(child: OrientationBuilderGridViewWidget()),
              ],
            ),
          ),
        );
      }),
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

  bool isPortraitMode(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
}
