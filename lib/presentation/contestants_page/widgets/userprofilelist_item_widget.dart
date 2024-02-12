import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:get/get.dart'; // Import the GetX package

// class UserprofilelistItemWidget extends StatelessWidget {
//   const UserprofilelistItemWidget({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {

//     return Container(
//       padding: EdgeInsets.all(5.h),
//       decoration: AppDecoration.fillOnErrorContainer.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder5,
//       ),
//       child: Row(
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgPic,
//             height: 20.adaptSize,
//             width: 20.adaptSize,
//             radius: BorderRadius.circular(
//               10.h,
//             ),
//           ),
//           Opacity(
//             opacity: 0.5,
//             child: Padding(
//               padding: EdgeInsets.only(left: 10.h),
//               child: Text(
//                 "Name Artist",
//                 style: CustomTextStyles.labelLargeWhiteA700Medium,
//               ),
//             ),
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgSearchBlueGray100,
//             height: 9.adaptSize,
//             width: 9.adaptSize,
//             radius: BorderRadius.circular(
//               1.h,
//             ),
//             margin: EdgeInsets.only(
//               left: 10.h,
//               top: 5.v,
//               bottom: 5.v,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//Second

class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Use Get.to() to navigate to another screen when the widget is tapped
        //Navigate to next Screen
        Get.to((profilePageScreen) => profilePageScreen);
      },
      child: Container(
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPic,
              height: 20.adaptSize,
              width: 20.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Name Artist",
                  style: CustomTextStyles.labelLargeWhiteA700Medium,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSearchBlueGray100,
              height: 9.adaptSize,
              width: 9.adaptSize,
              radius: BorderRadius.circular(
                1.h,
              ),
              margin: EdgeInsets.only(
                left: 10.h,
                top: 5.v,
                bottom: 5.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
