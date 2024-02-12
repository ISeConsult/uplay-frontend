import '../profile_page_one_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:joel_s_application7/widgets/app_bar/custom_app_bar.dart';

class ProfilePageOneScreen extends StatelessWidget {
  const ProfilePageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.maxFinite,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.errorContainer,
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadiusStyle.roundedBorder50),
          child: Container(
            height: 809.v,
            width: double.maxFinite,
            decoration: AppDecoration.fillErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        decoration: AppDecoration
                            .gradientLightblueA700ToOnPrimaryContainer,
                        //.copyWith(
                        //   borderRadius:
                        //    BorderRadiusStyle.roundedBorder50),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 50.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup2,
                              height: 753.v,
                              width: 390.h)
                        ]))),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 25.h, top: 16.v, right: 25.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildProfileBio(context),
                        SizedBox(height: 18.v),
                        Opacity(
                            opacity: 0.9,
                            child: Text("Username/Nickname",
                                style: theme.textTheme.titleLarge)),
                        Opacity(
                            opacity: 0.9,
                            child: Text("ID: ABC123456765",
                                style: CustomTextStyles.titleMediumGray5017)),
                        Opacity(
                            opacity: 0.75,
                            child: Text("Artist/Judge",
                                style:
                                    CustomTextStyles.labelLargeLightblueA700)),
                        SizedBox(height: 10.v),
                        _buildUserProfile(context)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  /// Section Widget
  Widget _buildProfileBio(BuildContext context) {
    return SizedBox(
        height: 193.v,
        width: 340.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 186.adaptSize,
                  width: 186.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: AppDecoration.outline1
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder93),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCoolProfilePi,
                      height: 156.adaptSize,
                      width: 156.adaptSize,
                      radius: BorderRadius.circular(78.h),
                      alignment: Alignment.center))),
          CustomAppBar(
              height: 35.v,
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgAngleRight,
                  margin: EdgeInsets.only(left: 25.h, bottom: 11.v),
                  onTap: () {
                    onTapAngleRight(context);
                  }),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgUserShield,
                    margin: EdgeInsets.symmetric(horizontal: 25.h),
                    onTap: () {
                      onTapUserShield(context);
                    })
              ])
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 201.v,
            crossAxisCount: 2,
            mainAxisSpacing: 25.h,
            crossAxisSpacing: 25.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        });
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapAngleRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapUserShield(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageScreen);
  }
}
