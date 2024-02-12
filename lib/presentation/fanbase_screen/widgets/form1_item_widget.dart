import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';

//
class Form1ItemWidget extends StatelessWidget {
  const Form1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 80.v,
        width: 160.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRetroMicrophon,
              height: 80.v,
              width: 160.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 40.adaptSize,
                width: 40.adaptSize,
                decoration: AppDecoration.fillBlackC.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgOverflowMenu,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
