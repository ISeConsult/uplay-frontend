import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../fanbase_screen/widgets/form1_item_widget.dart';
import '../fanbase_screen/widgets/form_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/presentation/contestants_page/contestants_page.dart';
import 'package:joel_s_application7/presentation/home_page/home_page.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_title_searchview.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:joel_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application7/widgets/custom_bottom_bar.dart';

class FanbaseScreen extends StatelessWidget {
  FanbaseScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 809.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                                          borderRadius:
                                              BorderRadius.circular(50.h),
                                          gradient: LinearGradient(
                                            begin: Alignment(0, 0),
                                            end: Alignment(1, 1),
                                            colors: [
                                              appTheme.lightBlueA700
                                                  .withOpacity(0.65),
                                              theme.colorScheme
                                                  .onPrimaryContainer
                                                  .withOpacity(0.65)
                                            ],
                                          ),
                                        ),
                                      )),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 25.h, top: 81.v, right: 25.h),
                                      //decoration: BoxDecoration(
                                      //   borderRadius: BorderRadiusStyle
                                      //    .roundedBorder10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildFormRow(context),
                                          SizedBox(height: 15.v),
                                          _buildTrendingVideosColumn(context),
                                          SizedBox(height: 15.v),
                                          _buildFanbaseMediaColumn(context)
                                        ],
                                      ),
                                    ),
                                  )
                                ])),
                        //
                        _buildAppBar(context)
                      ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup2,
                      height: 753.v,
                      width: 390.h,
                      alignment: Alignment.topCenter)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFormRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgSearchPink300,
              height: 42.v,
              width: 58.h,
              margin: EdgeInsets.symmetric(vertical: 20.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fanbase of Artist / Judge’s Favourate",
                        style: theme.textTheme.titleSmall),
                    Text("Artist Name", style: theme.textTheme.bodySmall),
                    Text("Genre", style: theme.textTheme.bodySmall),
                    Text("Fans", style: theme.textTheme.titleSmall),
                    Text("8000", style: theme.textTheme.bodySmall)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTrendingVideosColumn(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.9,
                  child: Text("Trending Videos",
                      style: CustomTextStyles.titleSmallGray50_1)),
              SizedBox(height: 3.v),
              Expanded(
                child: SizedBox(
                  height: 80.v,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10.h);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return FormItemWidget();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFanbaseMediaColumn(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Fanbase Media", style: CustomTextStyles.titleSmallGray50),
          SizedBox(height: 3.v),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 81.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Form1ItemWidget();
              })
        ]));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 25.h),
            hintText: "Search...",
            controller: searchController),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgUserAlt40x40,
              margin: EdgeInsets.only(left: 15.h, right: 25.h),
              onTap: () {
                onTapUserAlt(context);
              })
        ]);
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

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapUserAlt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageOneScreen);
  }
}

//Second
// class FanbaseScreen extends StatelessWidget {
//   FanbaseScreen({Key? key}) : super(key: key);

//   final TextEditingController searchController = TextEditingController();
//   final RxInt currentTabIndex = 0.obs;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: SizedBox(
//           height: 809.v,
//           width: double.maxFinite,
//           child: Stack(
//             alignment: Alignment.topCenter,
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SizedBox(
//                       height: 809.v,
//                       width: double.maxFinite,
//                       child: Stack(
//                         alignment: Alignment.topCenter,
//                         children: [
//                           Align(
//                             alignment: Alignment.center,
//                             child: Container(
//                               height: 809.v,
//                               width: double.maxFinite,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50.h),
//                                 gradient: LinearGradient(
//                                   begin: Alignment(0, 0),
//                                   end: Alignment(1, 1),
//                                   colors: [
//                                     appTheme.lightBlueA700.withOpacity(0.65),
//                                     theme.colorScheme.onPrimaryContainer
//                                         .withOpacity(0.65),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.topCenter,
//                             child: Container(
//                               margin: EdgeInsets.only(
//                                 left: 25.h,
//                                 top: 81.v,
//                                 right: 25.h,
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   _buildFormRow(context),
//                                   SizedBox(height: 15.v),
//                                   _buildTrendingVideosColumn(context),
//                                   SizedBox(height: 15.v),
//                                   _buildFanbaseMediaColumn(context),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     _buildAppBar(context),
//                   ],
//                 ),
//               ),
//               CustomImageView(
//                 imagePath: ImageConstant.imgGroup2,
//                 height: 753.v,
//                 width: 390.h,
//                 alignment: Alignment.topCenter,
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: _buildBottomBar(context),
//       ),
//     );
//   }

//   Widget _buildFormRow(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
//       decoration: AppDecoration.fillGray
//           .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
//       child: Row(
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgSearchPink300,
//             height: 42.v,
//             width: 58.h,
//             margin: EdgeInsets.symmetric(vertical: 20.v),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 15.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Fanbase of Artist / Judge’s Favourate",
//                   style: theme.textTheme.titleSmall,
//                 ),
//                 Text("Artist Name", style: theme.textTheme.bodySmall),
//                 Text("Genre", style: theme.textTheme.bodySmall),
//                 Text("Fans", style: theme.textTheme.titleSmall),
//                 Text("8000", style: theme.textTheme.bodySmall),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTrendingVideosColumn(BuildContext context) {
//     return Expanded(
//       child: SizedBox(
//         width: double.maxFinite,
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadiusStyle.roundedBorder10,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Opacity(
//                 opacity: 0.9,
//                 child: Text(
//                   "Trending Videos",
//                   style: CustomTextStyles.titleSmallGray50_1,
//                 ),
//               ),
//               SizedBox(height: 3.v),
//               Expanded(
//                 child: SizedBox(
//                   height: 80.v,
//                   child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     separatorBuilder: (context, index) {
//                       return SizedBox(width: 10.h);
//                     },
//                     itemCount: 3,
//                     itemBuilder: (context, index) {
//                       return FormItemWidget();
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFanbaseMediaColumn(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Fanbase Media",
//             style: CustomTextStyles.titleSmallGray50,
//           ),
//           SizedBox(height: 3.v),
//           GridView.builder(
//             shrinkWrap: true,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               mainAxisExtent: 81.v,
//               crossAxisCount: 2,
//               mainAxisSpacing: 20.h,
//               crossAxisSpacing: 20.h,
//             ),
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: 3,
//             itemBuilder: (context, index) {
//               return Form1ItemWidget();
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//       title: AppbarTitleSearchview(
//         margin: EdgeInsets.only(left: 25.h),
//         hintText: "Search...",
//         controller: searchController,
//       ),
//       actions: [
//         AppbarTrailingIconbuttonOne(
//           imagePath: ImageConstant.imgUserAlt40x40,
//           margin: EdgeInsets.only(left: 15.h, right: 25.h),
//           onTap: () {
//             onTapUserAlt(context);
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildBottomBar(BuildContext context) {
//     return Obx(
//       () => CustomBottomBar(
//         currentIndex: currentTabIndex.value,
//         onChanged: (int index) {
//           currentTabIndex.value = index;
//         },
//       ),
//     );
//   }

//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Settings:
//         return AppRoutes.homePage;
//       case BottomBarEnum.User:
//         return AppRoutes.contestantsPage;
//       case BottomBarEnum.Thumbsup:
//         return "/";
//       case BottomBarEnum.Info:
//         return "/";
//       default:
//         return "/";
//     }
//   }

//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.homePage:
//         return HomePage();
//       case AppRoutes.contestantsPage:
//         return ContestantsPage();
//       default:
//         return DefaultWidget();
//     }
//   }

//   onTapUserAlt(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.profilePageOneScreen);
//   }
// }
