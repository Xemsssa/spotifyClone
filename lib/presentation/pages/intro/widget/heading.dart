import 'package:flutter/material.dart';

import '../../../../core/configs/assets/app_images.dart';
import 'headingWidget.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: HeadingWidget(),
    );
  }
}
