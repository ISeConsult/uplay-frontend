import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/tabs_screen/models/tabs_model.dart';

///
/// This class manages the state of the TabsScreen, including the
/// current tabsModelObj
class TabsController extends GetxController {
  Rx<TabsModel> tabsModelObj = TabsModel().obs;
}
