import 'package:flutter/material.dart';
import 'package:responsive_layouts/src/util/az_material_colors.dart';
import 'package:responsive_layouts/src/widgets/drawer_widget.dart';
import 'package:responsive_layouts/src/widgets/expanded_widget.dart';
import 'package:responsive_layouts/src/widgets/fittedbox_with_options.dart';
import 'package:responsive_layouts/src/widgets/flexible_vs_expanded.dart';
import 'package:responsive_layouts/src/widgets/flexible_widget_basic.dart';
import 'package:responsive_layouts/src/widgets/flexible_widget_layoutbuilder.dart';
import 'package:responsive_layouts/src/widgets/intrinsic_height_card_row.dart';
import 'package:responsive_layouts/src/widgets/intrinsic_height_row.dart';
import 'package:responsive_layouts/src/widgets/intrinsic_width_column.dart';
import 'package:responsive_layouts/src/widgets/media_query_vs_layout_builder.dart';
import 'package:responsive_layouts/src/widgets/orientation_builder_gridview_widget.dart';
import 'package:responsive_layouts/src/widgets/orientation_builder_widget.dart';
import 'package:responsive_layouts/src/widgets/orientation_mediaquery_widget.dart';
import 'package:responsive_layouts/src/widgets/spacer_container.dart';
import 'package:responsive_layouts/src/widgets/wrap_container.dart';

class App extends StatelessWidget {
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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Responsive Layouts'),
          ),
          body: DrawerWidget(),
        ),
      ),
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
