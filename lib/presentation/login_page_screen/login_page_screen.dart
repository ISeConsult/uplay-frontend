import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:joel_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application7/widgets/custom_checkbox_button.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';
import 'package:joel_s_application7/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController idLabelController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMeCheckBox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSignupPage),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: SizedBox(
                                height: 809.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .gradientLightblueA700ToOnPrimaryContainer,
                                              //.copyWith(
                                              // borderRadius:
                                              // BorderRadiusStyle
                                              // .roundedBorder50),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 55.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup2,
                                                        height: 753.v,
                                                        width: 390.h)
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 25.h,
                                                  top: 28.v,
                                                  right: 25.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    _buildWelcomeBackAppBar(
                                                        context),
                                                    SizedBox(height: 11.v),
                                                    Text(
                                                        "Please Log In And Lets Continue",
                                                        style: CustomTextStyles
                                                            .bodyMediumWhiteA700),
                                                    SizedBox(height: 29.v),
                                                    Text("Log In",
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    SizedBox(height: 12.v),
                                                    CustomTextFormField(
                                                        controller:
                                                            idLabelController,
                                                        hintText: "ID"),
                                                    SizedBox(height: 15.v),
                                                    CustomTextFormField(
                                                        controller:
                                                            passwordController,
                                                        hintText: "Password",
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        textInputType:
                                                            TextInputType
                                                                .visiblePassword,
                                                        obscureText: true),
                                                    SizedBox(height: 16.v),
                                                    _buildRememberMeCheckBox(
                                                        context),
                                                    SizedBox(height: 23.v),
                                                    CustomElevatedButton(
                                                        text: "Log In",
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    20.h),
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .outlineLightBlueA,
                                                        buttonTextStyle: theme
                                                            .textTheme
                                                            .titleMedium!,
                                                        onPressed: () {
                                                          onTapLogIn(context);
                                                        }),
                                                    SizedBox(height: 18.v),
                                                    Text("Forgot Password?",
                                                        style: theme.textTheme
                                                            .bodyLarge!
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline)),
                                                    SizedBox(height: 19.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Row(children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          1.v),
                                                              child: Text(
                                                                  "Need an Account? ",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtSignUp(
                                                                    context);
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 5
                                                                              .h),
                                                                  child: Text(
                                                                      "SignUp",
                                                                      style: CustomTextStyles
                                                                          .titleMediumPrimaryContainer)))
                                                        ])),
                                                    SizedBox(height: 20.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Row(children: [
                                                          Text("Need an ID?",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtSubscribe(
                                                                    context);
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 5
                                                                              .h),
                                                                  child: Text(
                                                                      "Subscribe",
                                                                      style: CustomTextStyles
                                                                          .titleMediumPrimaryContainer)))
                                                        ]))
                                                  ])))
                                    ]))))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildWelcomeBackAppBar(BuildContext context) {
    return CustomAppBar(
        height: 42.v,
        centerTitle: true,
        title: AppbarTitle(text: "Welcome Back!"));
  }

  /// Section Widget
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "Remember Me",
            value: rememberMeCheckBox,
            textStyle: theme.textTheme.bodyLarge,
            onChange: (value) {
              rememberMeCheckBox = value;
            }));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the signupPageScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupPageScreen);
  }

  /// Navigates to the subscriptionScreen when the action is triggered.
  onTapTxtSubscribe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.subscriptionScreen);
  }
}
