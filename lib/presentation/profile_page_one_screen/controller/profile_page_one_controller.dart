import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/profile_page_one_screen/models/profile_page_one_model.dart';

/// A controller class for the ProfilePageOneScreen.
///
/// This class manages the state of the ProfilePageOneScreen, including the
/// current profilePageOneModelObj
class ProfilePageOneController extends GetxController {
  Rx<ProfilePageOneModel> profilePageOneModelObj = ProfilePageOneModel().obs;
}
