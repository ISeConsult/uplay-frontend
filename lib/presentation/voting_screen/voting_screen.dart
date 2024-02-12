import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_checkbox_button.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';
import 'package:joel_s_application7/widgets/custom_outlined_button.dart';

class VotingScreen extends StatelessWidget {
  VotingScreen({Key? key})
      : super(
          key: key,
        );

  bool vcash = false;

  bool bfv = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildVotingForm(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVotingForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      // decoration: AppDecoration.fillGray.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder5,
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Voting:",
            style: CustomTextStyles.titleMediumGray50,
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillBlackC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngtreeManWea,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    bottom: 7.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Artist",
                        style: CustomTextStyles.titleSmallGray50,
                      ),
                      Text(
                        "Artist Name",
                        style: CustomTextStyles.bodySmallGray50,
                      ),
                      Text(
                        "Genre",
                        style: CustomTextStyles.bodySmallGray50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "No. of Votes",
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            buttonStyle: CustomButtonStyles.outlineGrayTL20,
            buttonTextStyle: CustomTextStyles.bodyLargeBluegray100,
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 76.h,
              ),
              child: Row(
                children: [
                  CustomCheckboxButton(
                    text: "Vcash: 2000",
                    value: vcash,
                    onChange: (value) {
                      vcash = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 61.h),
                    child: CustomCheckboxButton(
                      text: "BFV: 2000",
                      value: bfv,
                      onChange: (value) {
                        bfv = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.v),
          CustomElevatedButton(
            text: "Confirm",
            margin: EdgeInsets.symmetric(horizontal: 5.h),
          ),
        ],
      ),
    );
  }
}
