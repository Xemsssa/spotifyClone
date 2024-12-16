import 'package:flutter/material.dart';

import '../../../../core/configs/assets/app_images.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                AppImages.logo
            ),
            // fit: BoxFit.cove
          )
      ),);
  }
}
