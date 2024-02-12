import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';

//
class RewardnotificationItemWidget extends StatelessWidget {
  const RewardnotificationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpPink3002,
            height: 71.v,
            width: 72.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Column(
              children: [
                Text(
                  "You Have an AZ reward",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 187.h,
                  child: Text(
                    "You have earned an Amount of GHC 132.00",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 2.v),
                CustomElevatedButton(
                  height: 28.v,
                  width: 150.h,
                  text: "Cashout",
                  buttonStyle: CustomButtonStyles.fillLightBlueA,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
