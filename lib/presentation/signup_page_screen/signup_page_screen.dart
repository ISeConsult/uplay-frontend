import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:joel_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';
import 'package:joel_s_application7/widgets/custom_outlined_button.dart';
import 'package:joel_s_application7/widgets/custom_text_form_field.dart';

class SignupPageScreen extends StatelessWidget {
  SignupPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userIdController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

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
              image: AssetImage(
                ImageConstant.imgSignupPage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                  height: 809.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: AppDecoration
                              .gradientLightblueA700ToOnPrimaryContainer,
                          //     .copyWith(
                          //   borderRadius: BorderRadiusStyle.roundedBorder50,
                          // ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 55.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup2,
                                height: 753.v,
                                width: 390.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildWelcomeAppBar(context),
                              SizedBox(height: 7.v),
                              Text(
                                "Please Sign Up And Lets Get Started",
                                style: CustomTextStyles.bodyMediumWhiteA700,
                              ),
                              SizedBox(height: 28.v),
                              Text(
                                "Sign Up",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 13.v),
                              _buildFirstName(context),
                              SizedBox(height: 15.v),
                              _buildLastName(context),
                              SizedBox(height: 15.v),
                              _buildNickname(context),
                              SizedBox(height: 15.v),
                              _buildEmail(context),
                              SizedBox(height: 15.v),
                              _buildDob(context),
                              SizedBox(height: 15.v),
                              _buildAddress(context),
                              SizedBox(height: 15.v),
                              _buildRegion(context),
                              SizedBox(height: 15.v),
                              _buildUserId(context),
                              SizedBox(height: 15.v),
                              _buildPassword(context),
                              SizedBox(height: 15.v),
                              _buildConfirmPassword(context),
                              SizedBox(height: 34.v),
                              _buildSignUpButton(context),
                            ],
                          ),
                        ),
                      ),
                    ],
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
  PreferredSizeWidget _buildWelcomeAppBar(BuildContext context) {
    return CustomAppBar(
      height: 42.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "Welcome to Uplay!",
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomOutlinedButton(
      text: "First Name",
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomOutlinedButton(
      text: "Last Name",
    );
  }

  /// Section Widget
  Widget _buildNickname(BuildContext context) {
    return CustomOutlinedButton(
      text: "Nickname",
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomOutlinedButton(
      text: "Email",
    );
  }

  /// Section Widget
  Widget _buildDob(BuildContext context) {
    return CustomOutlinedButton(
      text: "Dob",
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomOutlinedButton(
      text: "Address",
    );
  }

  /// Section Widget
  Widget _buildRegion(BuildContext context) {
    return CustomOutlinedButton(
      text: "Region",
    );
  }

  /// Section Widget
  Widget _buildUserId(BuildContext context) {
    return CustomTextFormField(
      controller: userIdController,
      hintText: "ID",
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordController,
      hintText: "Confirm password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      margin: EdgeInsets.symmetric(horizontal: 20.h),
    );
  }
}
