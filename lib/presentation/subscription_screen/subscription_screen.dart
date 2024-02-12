import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_elevated_button.dart';
import 'package:joel_s_application7/widgets/custom_text_form_field.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildSubscriptionForm(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscriptionForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 8.v,
      ),
      // decoration: AppDecoration.fillGray.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder10,
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 11.v),
          CustomTextFormField(
            controller: phoneNumberController,
            hintText: "Enter Phone Number",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL20,
            filled: true,
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            text: "An Artiste",
            buttonTextStyle: CustomTextStyles.titleMediumGray50,
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            text: "A Judge",
            buttonTextStyle: CustomTextStyles.titleMediumGray50,
          ),
          SizedBox(height: 17.v),
          SizedBox(
            width: 299.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Note: \n",
                    style: CustomTextStyles.titleMediumfffbf9fa,
                  ),
                  TextSpan(
                    text: "Subscribing ",
                    style: CustomTextStyles.bodyLargefffbf9fa,
                  ),
                  TextSpan(
                    text: "as",
                    style: CustomTextStyles.bodyLargefffbf9fa,
                  ),
                  TextSpan(
                    text: "  artiste",
                    style: CustomTextStyles.titleMediumfffbf9fa,
                  ),
                  TextSpan(
                    text: " cost Ghc 70.00 And a ",
                    style: CustomTextStyles.bodyLargefffbf9fa,
                  ),
                  TextSpan(
                    text: "judge",
                    style: CustomTextStyles.titleMediumfffbf9fa,
                  ),
                  TextSpan(
                    text:
                        " cost Ghc 10.00. You will receive a USSD prompt after this action.\n",
                    style: CustomTextStyles.bodyLargefffbf9fa,
                  ),
                  TextSpan(
                    text: "\n",
                    style: CustomTextStyles.bodySmallfffbf9fa,
                  ),
                  TextSpan(
                    text:
                        "In order to participate in this contest you need to subscribe.\nThank you",
                    style: CustomTextStyles.bodyLargefffbf9fa,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
