import 'package:flutter/material.dart';
import 'package:techstore_flutter/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "DaStore App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}