import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_icon_button.dart';

class CollectionDialog extends StatelessWidget {
  const CollectionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(horizontal: 62.h, vertical: 101.v),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 114.h,
              child: Text("Coding in Flutter is Fun!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium),
            ),
            //
            SizedBox(height: 1.v),
            //
            CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.outlineBlackC,
                onTap: () {
                  onTapBtnClose();
                },
                child: CustomImageView(imagePath: ImageConstant.imgClose)),
            SizedBox(height: 4.v),
            Text("Tab the plus icon to add", style: theme.textTheme.bodySmall),
            SizedBox(height: 1.v),
            Text("Note: A file should Not exceed 20mb",
                style: CustomTextStyles.bodySmallPinkA200)
          ]),
    );
  }

  /// Navigates back to the previous screen.
  // onTapBtnClose(BuildContext context) {
  //   Navigator.pop(context);
  // }
  onTapBtnClose() {
    Get.back();
  }
}
