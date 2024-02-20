//import 'package:joel_s_application10/core/app_export.dart';
//mport 'package:joel_s_application10/presentation/gift_screen/models/gift_model.dart';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/gift_screen/models/gift_model.dart';

/// A controller class for the GiftScreen.
///
/// This class manages the state of the GiftScreen, including the
/// current giftModelObj
class GiftController extends GetxController {
  Rx<GiftModel> giftModelObj = GiftModel().obs;
}
