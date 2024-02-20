//import 'package:joel_s_application10/core/app_export.dart';
//import 'package:joel_s_application10/presentation/signup_page_screen/models/signup_page_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/signup_page_screen/models/signup_page_model.dart';

/// A controller class for the SignupPageScreen.
///
/// This class manages the state of the SignupPageScreen, including the
/// current signupPageModelObj
class SignupPageController extends GetxController {
  TextEditingController idController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignupPageModel> signupPageModelObj = SignupPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    idController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
