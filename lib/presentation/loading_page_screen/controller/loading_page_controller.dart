import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:joel_s_application7/routes/app_routes.dart';

/// A controller class for the LoadingPageScreen.
///
/// This class manages the state of the LoadingPageScreen, including the
/// current loadingPageModelObj
class LoadingPageController extends GetxController {
  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.getStartedScreen,
      );
    });
  }
}
