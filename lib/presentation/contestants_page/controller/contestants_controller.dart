import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//import 'package:joel_s_application10/core/app_export.dart';
//import 'package:joel_s_application10/presentation/contestants_page/models/contestants_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/presentation/contestants_page/models/contestants_model.dart';

/// A controller class for the ContestantsPage.
///
/// This class manages the state of the ContestantsPage, including the
/// current contestantsModelObj
class ContestantsController extends GetxController {
  ContestantsController(this.contestantsModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ContestantsModel> contestantsModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
