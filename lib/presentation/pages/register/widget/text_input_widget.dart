import 'package:flutter/material.dart';

import '../../../../core/configs/theme/app_colors.dart';

class textInputWidget extends StatelessWidget {
  final String text;
  const textInputWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // borderRadius: BorderRadius.circular(40),
            // color: AppColors.midGrey,
            border: Border.all(width: 1, color: AppColors.white)
        ),
        child: TextField(
          style: TextStyle(
            color: AppColors.grey,
          ),
          obscureText: text == 'Password' ? true : false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            hintStyle: TextStyle(
              color: AppColors.grey
            ),
              hintText: text,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: BorderSide(width: 1.0, color: AppColors.midGrey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                // borderSide: BorderSide(width: 1.0, color: AppColors.midGrey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),

        )
    );
  }
}
