import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 41.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(17.h),
            decoration: IconButtonStyleHelper.fillLightBlueA,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserAlt,
            ),
          ),
          SizedBox(height: 28.v),
          Opacity(
            opacity: 0.9,
            child: Text(
              "32,843",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              "Followers",
              style: CustomTextStyles.labelLargeGray50,
            ),
          ),
        ],
      ),
    );
  }
}
