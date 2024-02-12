import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';

class GetStartedIntroductionScreen extends StatelessWidget {
  const GetStartedIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 809.v,
          width: double.maxFinite,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: AppDecoration.gradientLightBlueAToOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 55.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup2,
                        height: 753.v,
                        width: 390.h)
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 111.h, vertical: 121.v),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: fs.Svg(ImageConstant.imgGroup1),
                            fit: BoxFit.cover)),
                    child: Text("Introduction",
                        style: theme.textTheme.headlineMedium))),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 150.adaptSize,
                    width: 150.adaptSize,
                    margin: EdgeInsets.only(top: 59.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 31.h, vertical: 10.v),
                    decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 130.v,
                        width: 86.h,
                        alignment: Alignment.center))),
            _buildGetStartedIntroductionFrameEight(context)
          ]),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedIntroductionFrameEight(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 39.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: 364.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: 338.h,
                          child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Id integer et pretium amet adipiscing accumsan donec cursus neque. Enim metus vel adipiscing vitae sit tellus enim est libero. Mollis viverra netus at bibendum posuere pellentesque massa curabitur tellus. Imperdiet placerat risus et aenean dui lacus a fringilla. Ultrices lacus accumsan leo risus viverra aliquet massa cras tempus. Urna faucibus gravida in quam lorem. Vulputate felis facilisi est neque duis ut adipiscing. Ut leo in magna sit malesuada porttitor interdum aliquam. Auctor ut sed odio suspendisse in sagittis nec. Massa habitant enim in nunc fermentum. Elit imperdiet quis aliquet massa fusce dictumst sed cursus. In interdum urna est nec urna eleifend. A pulvinar turpis libero nec nulla nunc pellentesque odio egestas.\nMorbi vitae ornare sit ipsum. Facilisis erat eleifend quis ultricies quam congue. Fringilla laoreet morbi quisque justo consectetur vel. Neque ut bibendum sodales sociis nec. Tellus parturient a pellentesque risus.\nIn mollis cras eleifend integer ac vitae tristique. Tempus pharetra enim id ullamcorper velit et. Amet quisque libero ut enim facilisis. Pellentesque aliquet netus fusce tortor ullamcorper convallis sagittis amet massa. Lorem augue pellentesque dolor sit cras consectetur fermentum dignissim lobortis. Ipsum tristique dictum cursus amet dictumst viverra est elit quis. Nam ut scelerisque vehicula placerat. Porttitor consectetur at proin pretium. Bibendum diam aliquet sed interdum. Pulvinar dictum ut maecenas nulla hac tellus pulvinar nunc est. Nunc nunc ut sagittis sit. Mus nec neque pulvinar in aliquam.\nLorem donec posuere mauris orci est pharetra morbi. Erat sit volutpat magna interdum. Ultrices tristique id neque aliquet. Sed eget quam sed orci ultricies elementum imperdiet facilisis eu. Turpis amet massa diam habitasse consequat rhoncus. Risus quis urna aliquam sodales ligula. Dui sed est sit nisl. Nibh adipiscing enim faucibus ligula ultricies pharetra quis integer. Pellentesque etiam dolor purus fermentum. Ut pellentesque integer arcu tellus semper ut egestas amet facilisi. Eu hendrerit in quis nam metus ut id tellus justo.\nId nibh turpis auctor orci convallis faucibus purus. Nulla et eget libero nisi sed. Habitasse vestibulum nunc convallis viverra ullamcorper mollis egestas donec nunc. Amet sed sed proin dolor at. Vitae vulputate maecenas lorem ligula velit maecenas sed. At diam ullamcorper sed sit in.\nConsequat in eu morbi nisl risus enim venenatis et tempor. Non vestibulum quam tortor netus. Tellus pharetra morbi enim adipiscing suspendisse gravida a libero. Vulputate turpis diam lacinia suspendisse arcu lacus. Adipiscing tempor morbi elementum in ac in fames nunc. Lectus nibh ac aliquam turpis est senectus donec volutpat ante. Maecenas ullamcorper tincidunt lectus auctor est. Scelerisque vestibulum sit proin tincidunt sed.",
                              maxLines: 18,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium))),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame10,
                      height: 40.v,
                      width: 390.h,
                      alignment: Alignment.bottomCenter)
                ])),
            CustomElevatedButton(
                text: "Next",
                margin: EdgeInsets.symmetric(horizontal: 45.h),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                onPressed: () {
                  onTapNext(context);
                })
          ],
        ),
      ),
    );
  }

  // Navigates to the getStartedSubscriptionScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedSubscriptionScreen);
  }
}

//

// class GetStartedIntroductionScreen extends StatelessWidget {
//   final GetStartedIntroductionController controller =
//       Get.put(GetStartedIntroductionController());

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           height: 809.v,
//           width: double.maxFinite,
//           child: Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   decoration: AppDecoration
//                       .gradientLightBlueAToOnPrimaryContainer
//                       .copyWith(
//                           borderRadius: BorderRadiusStyle.roundedBorder50),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       SizedBox(height: 55.v),
//                       CustomImageView(
//                           imagePath: ImageConstant.imgGroup2,
//                           height: 753.v,
//                           width: 390.h)
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 111.h, vertical: 121.v),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: fs.Svg(ImageConstant.imgGroup1),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Text("Introduction",
//                       style: theme.textTheme.headlineMedium),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Container(
//                   height: 150.adaptSize,
//                   width: 150.adaptSize,
//                   margin: EdgeInsets.only(top: 59.v),
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 31.h, vertical: 10.v),
//                   decoration: AppDecoration.outline.copyWith(
//                       borderRadius: BorderRadiusStyle.roundedBorder10),
//                   child: CustomImageView(
//                       imagePath: ImageConstant.imgImage2,
//                       height: 130.v,
//                       width: 86.h,
//                       alignment: Alignment.center),
//                 ),
//               ),
//               _buildGetStartedIntroductionFrameEight(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildGetStartedIntroductionFrameEight(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Padding(
//         padding: EdgeInsets.only(bottom: 39.v),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             SizedBox(
//               height: 364.v,
//               width: double.maxFinite,
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   Align(
//                     alignment: Alignment.center,
//                     child: SizedBox(
//                       width: 338.h,
//                       child: Text(
//                         "Lorem ipsum dolor sit amet consectetur. Id integer et pretium amet adipiscing accumsan donec cursus neque. Enim metus vel adipiscing vitae sit tellus enim est libero. Mollis viverra netus at bibendum posuere pellentesque massa curabitur tellus. Imperdiet placerat risus et aenean dui lacus a fringilla. Ultrices lacus accumsan leo risus viverra aliquet massa cras tempus. Urna faucibus gravida in quam lorem. Vulputate felis facilisi est neque duis ut adipiscing. Ut leo in magna sit malesuada porttitor interdum aliquam. Auctor ut sed odio suspendisse in sagittis nec. Massa habitant enim in nunc fermentum. Elit imperdiet quis aliquet massa fusce dictumst sed cursus. In interdum urna est nec urna eleifend. A pulvinar turpis libero nec nulla nunc pellentesque odio egestas.\nMorbi vitae ornare sit ipsum. Facilisis erat eleifend quis ultricies quam congue. Fringilla laoreet morbi quisque justo consectetur vel. Neque ut bibendum sodales sociis nec. Tellus parturient a pellentesque risus.\nIn mollis cras eleifend integer ac vitae tristique. Tempus pharetra enim id ullamcorper velit et. Amet quisque libero ut enim facilisis. Pellentesque aliquet netus fusce tortor ullamcorper convallis sagittis amet massa. Lorem augue pellentesque dolor sit cras consectetur fermentum dignissim lobortis. Ipsum tristique dictum cursus amet dictumst viverra est elit quis. Nam ut scelerisque vehicula placerat. Porttitor consectetur at proin pretium. Bibendum diam aliquet sed interdum. Pulvinar dictum ut maecenas nulla hac tellus pulvinar nunc est. Nunc nunc ut sagittis sit. Mus nec neque pulvinar in aliquam.\nLorem donec posuere mauris orci est pharetra morbi. Erat sit volutpat magna interdum. Ultrices tristique id neque aliquet. Sed eget quam sed orci ultricies elementum imperdiet facilisis eu. Turpis amet massa diam habitasse consequat rhoncus. Risus quis urna aliquam sodales ligula. Dui sed est sit nisl. Nibh adipiscing enim faucibus ligula ultricies pharetra quis integer. Pellentesque etiam dolor purus fermentum. Ut pellentesque integer arcu tellus semper ut egestas amet facilisi. Eu hendrerit in quis nam metus ut id tellus justo.\nId nibh turpis auctor orci convallis faucibus purus. Nulla et eget libero nisi sed. Habitasse vestibulum nunc convallis viverra ullamcorper mollis egestas donec nunc. Amet sed sed proin dolor at. Vitae vulputate maecenas lorem ligula velit maecenas sed. At diam ullamcorper sed sit in.\nConsequat in eu morbi nisl risus enim venenatis et tempor. Non vestibulum quam tortor netus. Tellus pharetra morbi enim adipiscing suspendisse gravida a libero. Vulputate turpis diam lacinia suspendisse arcu lacus. Adipiscing tempor morbi elementum in ac in fames nunc. Lectus nibh ac aliquam turpis est senectus donec volutpat ante. Maecenas ullamcorper tincidunt lectus auctor est. Scelerisque vestibulum sit proin tincidunt sed.",
//                         maxLines: 18,
//                         overflow: TextOverflow.ellipsis,
//                         style: theme.textTheme.bodyMedium,
//                       ),
//                     ),
//                   ),
//                   CustomImageView(
//                     imagePath: ImageConstant.imgFrame10,
//                     height: 40.v,
//                     width: 390.h,
//                     alignment: Alignment.bottomCenter,
//                   ),
//                 ],
//               ),
//             ),
//             CustomElevatedButton(
//               text: "Next",
//               margin: EdgeInsets.symmetric(horizontal: 45.h),
//               buttonStyle: CustomButtonStyles.outlinePrimary,
//               onPressed: () {
//                 onTapNext(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Navigates to the getStartedSubscriptionScreen when the action is triggered.
//   onTapNext(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.getStartedSubscriptionScreen);
//   }
// }
