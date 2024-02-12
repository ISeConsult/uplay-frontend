import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_subtitle.dart';
import 'package:joel_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';
import 'package:joel_s_application7/widgets/custom_text_form_field.dart';

//
class ProfilePageScreen extends StatelessWidget {
  ProfilePageScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

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
                width: double.maxFinite,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.errorContainer,
                  // shape: RoundedRectangleBorder(
                  // borderRadius:
                  //     BorderRadiusStyle.roundedBorder50),
                  child: Container(
                    height: 809.v,
                    width: double.maxFinite,
                    // decoration: AppDecoration.fillErrorContainer.copyWith(
                    //     borderRadius: BorderRadiusStyle.roundedBorder50),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: AppDecoration
                              .gradientLightblueA700ToOnPrimaryContainer,
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
                          ]),
                        ),
                      ),
                      _buildFrameTwelve(context)
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Old Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController,
        hintText: "New Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController1,
        hintText: "Confirm New password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildChange(BuildContext context) {
    return CustomElevatedButton(
        text: "Change",
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapChange(context);
        });
  }

  /// Section Widget
  Widget _buildFrameTwelve(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, top: 46.v, right: 25.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  height: 29.v,
                  leadingWidth: 50.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgAngleRight,
                      margin: EdgeInsets.only(left: 25.h, bottom: 4.v),
                      onTap: () {
                        onTapAngleRight(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "Change Password")),
              SizedBox(height: 12.v),
              _buildPassword(context),
              SizedBox(height: 15.v),
              _buildNewpassword(context),
              SizedBox(height: 15.v),
              _buildNewpassword1(context),
              SizedBox(height: 15.v),
              _buildChange(context)
            ])));
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapAngleRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageOneScreen);
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapChange(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageOneScreen);
  }
}
