import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_icon_button.dart';

//
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          decoration: IconButtonStyleHelper.outlineGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgUserShield,
          ),
        ),
      ),
    );
  }
}
