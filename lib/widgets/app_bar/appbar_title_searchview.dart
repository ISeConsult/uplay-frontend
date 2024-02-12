import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/custom_search_view.dart';

class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 285.h,
        controller: controller,
        hintText: "Search...",
      ),
    );
  }
}
