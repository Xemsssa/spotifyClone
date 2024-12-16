import 'package:flutter/material.dart';

import '../../../../core/configs/assets/app_images.dart';
import '../../../../core/configs/theme/app_colors.dart';

class HeadingLogoWidget extends StatelessWidget {
  const HeadingLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.darkBackground3,
        centerTitle: true,
        leading: null,
        // title: SvgPicture.asset(AppVectors.smalllogo)
        title: Image.asset(AppImages.smalllogo)
    );
  }
}
