import 'package:joel_s_application7/core/utils/image_constant.dart';

import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.retroMicrophon,
    this.overflowMenu,
    this.id,
  }) {
    retroMicrophon = retroMicrophon ?? Rx(ImageConstant.imgRetroMicrophon);
    overflowMenu = overflowMenu ?? Rx(ImageConstant.imgOverflowMenu);
    id = id ?? Rx("");
  }

  Rx<String>? retroMicrophon;

  Rx<String>? overflowMenu;

  Rx<String>? id;
}
