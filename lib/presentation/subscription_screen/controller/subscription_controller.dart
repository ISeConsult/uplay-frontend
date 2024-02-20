import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application7/presentation/subscription_screen/models/subscription_model.dart';

/// A controller class for the SubscriptionScreen.
///
/// This class manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  Rx<SubscriptionModel> subscriptionModelObj = SubscriptionModel().obs;
}
