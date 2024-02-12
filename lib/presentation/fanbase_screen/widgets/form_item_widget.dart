import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/presentation/tabs_screen/tabs_screen.dart';

// //
// class FormItemWidget extends StatelessWidget {
//   const FormItemWidget({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 140.h,
//       child: Card(
//         clipBehavior: Clip.antiAlias,
//         elevation: 0,
//         margin: EdgeInsets.all(0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusStyle.roundedBorder10,
//         ),
//         child: Container(
//           height: 80.v,
//           width: 140.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadiusStyle.roundedBorder10,
//           ),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgRetroMicrophon,
//                 height: 80.v,
//                 width: 140.h,
//                 radius: BorderRadius.circular(
//                   10.h,
//                 ),
//                 alignment: Alignment.center,
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   height: 40.adaptSize,
//                   width: 40.adaptSize,
//                   decoration: AppDecoration.fillBlackC.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder20,
//                   ),
//                   child: CustomImageView(
//                     imagePath: ImageConstant.imgOverflowMenu,
//                     height: 40.adaptSize,
//                     width: 40.adaptSize,
//                     radius: BorderRadius.circular(
//                       20.h,
//                     ),
//                     alignment: Alignment.center,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//second

class FormItemWidget extends StatelessWidget {
  const FormItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: GestureDetector(
        onTap: () {
          // Use Get.to() to navigate to another screen when the card is tapped
          Get.to(() => TabsScreen());
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 80.v,
            width: 140.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRetroMicrophon,
                  height: 80.v,
                  width: 140.h,
                  radius: BorderRadius.circular(10.h),
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
                      radius: BorderRadius.circular(20.h),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
