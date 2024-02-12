//import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//
//
const num DESIGN_WIDTH = 390;
const num DESIGN_HEIGHT = 844;
const num DESIGN_STATUS_BAR = 0;
typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class Sizer extends StatelessWidget {
  const Sizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  /// Builds the widget with changes...
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  //
  static late BoxConstraints boxConstraints;

  // Device's Orientation
  static late Orientation orientation;

  // Type of Device
  //
  // mobile or tablet
  static late DeviceType deviceType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    // my boxConstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(defaultValue: DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}

// height of the screen or widget according to the Viewport height.
extension ResponsiveExtension on num {
  // get device viewport width.
  double get _width => SizeUtils.width;

  // get device viewport height.
  double get _height => SizeUtils.height;

  // set padding/margin (for the left and Right side) &
  // width of the screen or widget according to the Viewport width.
  double get h => ((this * _width) / DESIGN_WIDTH);

  // used to set padding/margin (for the top and bottom side) &
  // height of the screen or widget according to the Viewport height.
  double get v => (this * _height) / (DESIGN_HEIGHT - DESIGN_STATUS_BAR);

  // set smallest px in image height and width
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  // set text font size according to Viewport
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  /// Return a [double] value with formatted according to provided fractionDigits
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }
