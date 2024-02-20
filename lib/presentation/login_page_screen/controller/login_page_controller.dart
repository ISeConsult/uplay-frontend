import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/login_page_screen/models/login_page_model.dart';

/// A controller class for the LoginPageScreen.
///
/// This class manages the state of the LoginPageScreen, including the
/// current loginPageModelObj
class LoginPageController extends GetxController {
  TextEditingController idLabelController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    idLabelController.dispose();
    passwordController.dispose();
  }
}
