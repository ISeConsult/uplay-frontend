import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/presentation/contestants_page/contestants_page.dart';
import 'package:joel_s_application7/presentation/home_page/home_page.dart';
import 'package:joel_s_application7/widgets/custom_bottom_bar.dart';

//
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.homePage,
            onGenerateRoute: (routeSetting) => PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) =>
                    getCurrentPage(routeSetting.name!),
                transitionDuration: Duration(seconds: 0))),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homePage;
      case BottomBarEnum.User:
        return AppRoutes.contestantsPage;
      case BottomBarEnum.Thumbsup:
        return "/";
      case BottomBarEnum.Info:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.contestantsPage:
        return ContestantsPage();
      default:
        return DefaultWidget();
    }
  }
}
