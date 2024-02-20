import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joel_s_application7/core/utils/size_utils.dart';
import 'package:joel_s_application7/theme/app_decoration.dart';
import 'package:joel_s_application7/theme/custom_text_style.dart';
import 'package:joel_s_application7/theme/theme_helper.dart';
import 'package:joel_s_application7/widgets/custom_icon_button.dart';
import 'package:joel_s_application7/widgets/custom_image_view.dart';

import '../controller/profile_page_one_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ProfilePageOneController>();

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
          Obx(
            () => CustomIconButton(
              height: 55.adaptSize,
              width: 55.adaptSize,
              padding: EdgeInsets.all(17.h),
              decoration: IconButtonStyleHelper.fillLightBlueA,
              child: CustomImageView(
                imagePath: userprofileItemModelObj.userIcon!.value,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Opacity(
            opacity: 0.9,
            child: Obx(
              () => Text(
                userprofileItemModelObj.followerCount!.value,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Obx(
              () => Text(
                userprofileItemModelObj.followerText!.value,
                style: CustomTextStyles.labelLargeGray50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
