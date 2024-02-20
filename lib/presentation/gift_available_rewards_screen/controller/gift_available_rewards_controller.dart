//import 'package:joel_s_application10/core/app_export.dart';
//import 'package:joel_s_application10/presentation/gift_available_rewards_screen/models/gift_available_rewards_model.dart';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/gift_available_rewards_screen/models/gift_available_rewards_model.dart';

/// A controller class for the GiftAvailableRewardsScreen.
///
/// This class manages the state of the GiftAvailableRewardsScreen, including the
/// current giftAvailableRewardsModelObj
class GiftAvailableRewardsController extends GetxController {
  Rx<GiftAvailableRewardsModel> giftAvailableRewardsModelObj =
      GiftAvailableRewardsModel().obs;
}
