import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/presentation/contestants_page/contestants_page.dart';
import 'package:joel_s_application7/presentation/home_page/home_page.dart';
import 'package:joel_s_application7/widgets/custom_bottom_bar.dart';
import 'package:joel_s_application7/widgets/custom_outlined_button.dart';
import 'package:joel_s_application7/presentation/collection_dialog/collection_dialog.dart';

//
class TabsScreen extends StatelessWidget {
  TabsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHomeTabs(context),
                  SizedBox(height: 33.v),
                  _buildContestantsTabs(context),
                  SizedBox(height: 33.v),
                  _buildFanbaseTabs(context),
                  SizedBox(height: 33.v),
                  _buildGiftsTabs(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildHomeTabs(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.gradientGrayToWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomOutlinedButton(
              width: 140.h,
              text: "Home",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCalculator,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgUser(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgThumbsUp(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo(context);
              })
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContestantsTabs(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgImage(context);
              }),
          Container(
              padding: EdgeInsets.fromLTRB(5.h, 9.v, 5.h, 8.v),
              decoration: AppDecoration.outlinePink,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup9,
                    height: 20.v,
                    width: 31.h),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("Contestants",
                        style: CustomTextStyles.titleSmallPink300))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgUser1(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgThumbsUp1(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo1(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFanbaseTabs(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgImage1(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomOutlinedButton(
              width: 140.h,
              text: "Fan Base",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 20.v,
                      width: 28.h)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgThumbsUp2(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo2(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildGiftsTabs(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgImage2(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgUser2(context);
              }),
          CustomOutlinedButton(
              width: 140.h,
              text: "Gifts",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsupPink300,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo3(context);
              })
        ]));
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

  /// Navigates to the fanbaseScreen when the action is triggered.
  onTapImgUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fanbaseScreen);
  }

  /// Navigates to the giftScreen when the action is triggered.
  onTapImgThumbsUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.giftScreen);
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CollectionDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the fanbaseScreen when the action is triggered.
  onTapImgUser1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fanbaseScreen);
  }

  /// Navigates to the giftScreen when the action is triggered.
  onTapImgThumbsUp1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.giftScreen);
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo1(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CollectionDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the giftScreen when the action is triggered.
  onTapImgThumbsUp2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.giftScreen);
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo2(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CollectionDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the fanbaseScreen when the action is triggered.
  onTapImgUser2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fanbaseScreen);
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo3(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CollectionDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
