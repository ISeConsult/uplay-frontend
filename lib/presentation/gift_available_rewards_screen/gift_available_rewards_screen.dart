import '../gift_available_rewards_screen/widgets/rewardnotification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/presentation/contestants_page/contestants_page.dart';
import 'package:joel_s_application7/presentation/home_page/home_page.dart';
import 'package:joel_s_application7/widgets/custom_bottom_bar.dart';

class GiftAvailableRewardsScreen extends StatelessWidget {
  GiftAvailableRewardsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 809.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 809.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 809.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            50.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(1, 1),
                            colors: [
                              appTheme.lightBlueA700.withOpacity(0.65),
                              theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.65),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 25.h,
                          top: 26.v,
                          right: 25.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildMoneyZoneForm(context),
                            SizedBox(height: 10.v),
                            _buildRewardNotification(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2,
                height: 753.v,
                width: 390.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMoneyZoneForm(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5.h),
          child: _buildGiftZoneForm(
            context,
            giftZoneText: "Money Zone",
            pointsCounterText: "Points: 3000",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: _buildGiftZoneForm(
            context,
            giftZoneText: "Gift Zone",
            pointsCounterText: "Points: 5000",
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRewardNotification(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 10.v,
        );
      },
      itemCount: 7,
      itemBuilder: (context, index) {
        return RewardnotificationItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildGiftZoneForm(
    BuildContext context, {
    required String giftZoneText,
    required String pointsCounterText,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                giftZoneText,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                pointsCounterText,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Handling route based on bottom click actions
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

  //Handling page based on route
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
