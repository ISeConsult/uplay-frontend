import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//import 'package:joel_s_application10/core/app_export.dart';
//import 'package:joel_s_application10/presentation/fanbase_screen/models/fanbase_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/presentation/fanbase_screen/models/fanbase_model.dart';

/// A controller class for the FanbaseScreen.
///
/// This class manages the state of the FanbaseScreen, including the
/// current fanbaseModelObj
class FanbaseController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FanbaseModel> fanbaseModelObj = FanbaseModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
