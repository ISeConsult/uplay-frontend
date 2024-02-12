import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

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
                          decoration: AppDecoration
                              .gradientLightBlueAToOnPrimaryContainer,
                          // .copyWith(
                          //     borderRadius:
                          //         BorderRadiusStyle.roundedBorder50),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 55.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup2,
                                height: 753.v,
                                width: 390.h)
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 39.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup1),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 60.v),
                            Text("ADDITION",
                                style: theme.textTheme.headlineMedium),
                            SizedBox(height: 87.v),
                            Opacity(
                                opacity: 0.7,
                                child: Text("To Contestants:",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer_1)),
                            SizedBox(height: 40.v),
                            Container(
                                width: 327.h,
                                margin: EdgeInsets.only(left: 6.h, right: 5.h),
                                child: Text(
                                    "Lorem ipsum dolor sit amet consectetur. Turpis vivamus vel in malesuada. Dolor ipsum platea proin vitae tincidunt auctor elementum. Sed sodales arcu lectus turpicras amet tellus.",
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 40.v),
                            Text("To ADDITION:",
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer),
                            SizedBox(height: 9.v),
                            Container(
                                width: 327.h,
                                margin: EdgeInsets.only(left: 6.h, right: 5.h),
                                child: Text(
                                    "Lorem ipsum dolor sit amet consectetur.vitae tincidunt auctor elementum. Sed sodales arcu lectus turpis nunc sagittis id eu. Praesent tincidunt cras amet tellus.",
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 28.v),
                            CustomElevatedButton(
                                text: "Get Started",
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                onPressed: () {
                                  onTapGetStarted(context);
                                })
                          ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 150.adaptSize,
                          width: 150.adaptSize,
                          margin: EdgeInsets.only(top: 59.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 10.v),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: 130.v,
                              width: 86.h,
                              alignment: Alignment.center)))
                ]))));
  }

  // Navigates to the loginPageScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
