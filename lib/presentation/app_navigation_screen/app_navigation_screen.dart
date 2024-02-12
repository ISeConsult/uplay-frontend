// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:joel_s_application7/core/app_export.dart';

// class AppNavigationScreen extends StatelessWidget {
//   const AppNavigationScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0XFFFFFFFF),
//         body: SizedBox(
//           width: 375.h,
//           child: Column(
//             children: [
//               _buildAppNavigation(context),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0XFFFFFFFF),
//                     ),
//                     //
//                     child: Column(
//                       children: [
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Loading page",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.loadingPageScreen),
//                           //
//                           routeName: AppRoutes.loadingPageScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Get Started-Introduction",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.getStartedIntroductionScreen),
//                           //
//                           routeName: AppRoutes.getStartedIntroductionScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Get Started-subscription",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.getStartedSubscriptionScreen),
//                           //
//                           routeName: AppRoutes.getStartedIntroductionScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Get Started",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.getStartedScreen),
//                           //
//                           routeName: AppRoutes.getStartedScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Signup-page",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.signupPageScreen),
//                           //
//                           routeName: AppRoutes.signupPageScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Login-page",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.loginPageScreen),
//                           //
//                           routeName: AppRoutes.loginPageScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Profile-page One",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.profilePageOneScreen),
//                           //
//                           routeName: AppRoutes.profilePageOneScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Subscription",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.subscriptionScreen),
//                           routeName: AppRoutes.subscriptionScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Voting",
//                           // onTapScreenTitle: () =>
//                           //     onTapScreenTitle(context, AppRoutes.votingScreen),
//                           routeName: AppRoutes.votingScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Profile-page",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.profilePageScreen),
//                           //
//                           routeName: AppRoutes.profilePageScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Tabs",
//                           // onTapScreenTitle: () =>
//                           //     onTapScreenTitle(context, AppRoutes.tabsScreen),
//                           routeName: AppRoutes.tabsScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Home - Container",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.homeContainerScreen),
//                           routeName: AppRoutes.homeContainerScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Fanbase",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.fanbaseScreen),
//                           //
//                           routeName: AppRoutes.fanbaseScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Gift",
//                           // onTapScreenTitle: () =>
//                           //     onTapScreenTitle(context, AppRoutes.giftScreen),
//                           //
//                           routeName: AppRoutes.giftScreen,
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Gift - Available rewards",
//                           // onTapScreenTitle: () => onTapScreenTitle(
//                           //     context, AppRoutes.giftAvailableRewardsScreen),
//                           //
//                           routeName: AppRoutes.giftAvailableRewardsScreen,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildAppNavigation(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0XFFFFFFFF),
//       ),
//       child: Column(
//         children: [
//           SizedBox(height: 10.v),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.h),
//               child: Text(
//                 "App Navigation",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0XFF000000),
//                   fontSize: 20.fSize,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.v),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: EdgeInsets.only(left: 20.h),
//               child: Text(
//                 "Enjoy every moment you have here on earth whiles the day goes by.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0XFF888888),
//                   fontSize: 16.fSize,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 5.v),
//           Divider(
//             height: 1.v,
//             thickness: 1.v,
//             color: Color(0XFF000000),
//           ),
//         ],
//       ),
//     );
//   }

//   // Common widget
//   Widget _buildScreenTitle(
//     BuildContext context, {
//     required String screenTitle,
//     //Function? onTapScreenTitle,
//     required String routeName,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         //onTapScreenTitle!.call();
//         Get.toNamed(routeName);
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0XFFFFFFFF),
//         ),
//         child: Column(
//           children: [
//             SizedBox(height: 10.v),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20.h),
//                 child: Text(
//                   screenTitle,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Color(0XFF000000),
//                     fontSize: 20.fSize,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10.v),
//             SizedBox(height: 5.v),
//             Divider(
//               height: 1.v,
//               thickness: 1.v,
//               color: Color(0XFF888888),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void onTapScreenTitle(
//     BuildContext context,
//     String routeName,
//   ) {
//     Navigator.pushNamed(context, routeName);
//   }
//   //
// //   void onTapScreenTitle(
// //   String routeName,
// // ) {
// //   Get.toNamed(routeName);
// // }
// }

//Second method
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application7/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Loading page",
                          routeName: AppRoutes.loadingPageScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Get Started-Introduction",
                          routeName: AppRoutes.getStartedIntroductionScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Get Started-subscription",
                          routeName: AppRoutes.getStartedSubscriptionScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Get Started",
                          routeName: AppRoutes.getStartedScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup-page",
                          routeName: AppRoutes.signupPageScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login-page",
                          routeName: AppRoutes.loginPageScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile-page One",
                          routeName: AppRoutes.profilePageOneScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription",
                          routeName: AppRoutes.subscriptionScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Voting",
                          routeName: AppRoutes.votingScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile-page",
                          routeName: AppRoutes.profilePageScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tabs",
                          routeName: AppRoutes.tabsScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          routeName: AppRoutes.homeContainerScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Fanbase",
                          routeName: AppRoutes.fanbaseScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gift",
                          routeName: AppRoutes.giftScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gift - Available rewards",
                          routeName: AppRoutes.giftAvailableRewardsScreen,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Enjoy every moment you have here on earth whiles the day goes by.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }
}
