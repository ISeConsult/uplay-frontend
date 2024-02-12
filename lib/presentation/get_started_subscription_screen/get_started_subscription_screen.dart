import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';
import 'package:joel_s_application7/widgets/custom_text_form_field.dart';

//
class GetStartedSubscriptionScreen extends StatelessWidget {
  GetStartedSubscriptionScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 809.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          decoration: AppDecoration
                                              .gradientLightBlueAToOnPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder50),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 55.v),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgGroup2,
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
                                                  image: fs.Svg(
                                                      ImageConstant.imgGroup1),
                                                  fit: BoxFit.cover)),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 82.v),
                                                Text("Subscribe as",
                                                    style: theme.textTheme
                                                        .headlineMedium),
                                                SizedBox(height: 87.v),
                                                _buildPhoneNumber(context),
                                                SizedBox(height: 15.v),
                                                _buildAnArtiste(context),
                                                SizedBox(height: 15.v),
                                                _buildAJudge(context),
                                                SizedBox(height: 17.v),
                                                SizedBox(
                                                    width: 335.h,
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "Note: \n",
                                                              style: CustomTextStyles
                                                                  .titleMediumff545865),
                                                          TextSpan(
                                                              text:
                                                                  "Subscribing ",
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "as",
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "  artiste",
                                                              style: CustomTextStyles
                                                                  .titleMediumff545865),
                                                          TextSpan(
                                                              text:
                                                                  " cost Ghc 70.00 And a ",
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "judge",
                                                              style: CustomTextStyles
                                                                  .titleMediumff545865),
                                                          TextSpan(
                                                              text:
                                                                  " cost Ghc 10.00. You will receive a USSD prompt after this action.\n",
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "\n",
                                                              style: CustomTextStyles
                                                                  .bodySmallff545865),
                                                          TextSpan(
                                                              text:
                                                                  "In order to participate in this contest you need to subscribe.\nThank you",
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center)),
                                                SizedBox(height: 5.v),
                                                _buildFrameEleven(context)
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 150.adaptSize,
                                          width: 150.adaptSize,
                                          margin: EdgeInsets.only(top: 59.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 31.h, vertical: 10.v),
                                          decoration: AppDecoration.outline
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage2,
                                              height: 130.v,
                                              width: 86.h,
                                              alignment: Alignment.center)))
                                ])))))));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            controller: phoneNumberController,
            hintText: "Enter Phone Number",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone));
  }

  /// Section Widget
  Widget _buildAnArtiste(BuildContext context) {
    return CustomElevatedButton(
        text: "An Artiste",
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapAnArtiste(context);
        });
  }

  /// Section Widget
  Widget _buildAJudge(BuildContext context) {
    return CustomElevatedButton(
        text: "A Judge",
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapAJudge(context);
        });
  }

  /// Section Widget
  Widget _buildPrevious(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Previous",
            margin: EdgeInsets.only(right: 25.h),
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            onPressed: () {
              onTapPrevious(context);
            }));
  }

  /// Section Widget
  Widget _buildLater(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Later",
            margin: EdgeInsets.only(left: 25.h),
            buttonStyle: CustomButtonStyles.outlinePrimary,
            onPressed: () {
              onTapLater(context);
            }));
  }

  /// Section Widget
  Widget _buildFrameEleven(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildPrevious(context), _buildLater(context)]);
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapAnArtiste(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapAJudge(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }

  /// Navigates to the getStartedIntroductionScreen when the action is triggered.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedIntroductionScreen);
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapLater(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }
}
