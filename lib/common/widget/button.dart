import 'package:flutter/material.dart';

import '../../core/configs/theme/app_colors.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text(text),
    );
  }
}