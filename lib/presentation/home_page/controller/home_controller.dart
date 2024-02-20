//import 'package:joel_s_application10/core/app_export.dart';
//import 'package:joel_s_application10/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/home_page/models/home_model.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
