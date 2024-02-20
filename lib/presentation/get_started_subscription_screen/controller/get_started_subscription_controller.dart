import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//import 'package:joel_s_application10/core/app_export.dart';
//import 'package:joel_s_application10/presentation/get_started_subscription_screen/models/get_started_subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/presentation/get_started_subscription_screen/models/get_started_subscription_model.dart';

/// A controller class for the GetStartedSubscriptionScreen.
///
/// This class manages the state of the GetStartedSubscriptionScreen, including the
/// current getStartedSubscriptionModelObj
class GetStartedSubscriptionController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<GetStartedSubscriptionModel> getStartedSubscriptionModelObj =
      GetStartedSubscriptionModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
