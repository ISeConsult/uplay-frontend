import 'package:joel_s_application7/presentation/profile_page_one_screen/profile_page_one_screen.dart';

import '../contestants_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application7/core/app_export.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_title_searchview.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:joel_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:get/get.dart';

//
// class ContestantsPage extends StatelessWidget {
//   ContestantsPage({Key? key}) : super(key: key);

//   TextEditingController searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         resizeToAvoidBottomInset: false,
//         body: SizedBox(
//           height: 730.v,
//           width: double.maxFinite,
//           child: Stack(alignment: Alignment.topCenter, children: [
//             Align(
//               alignment: Alignment.center,
//               child: Column(mainAxisSize: MainAxisSize.min, children: [
//                 SizedBox(
//                     height: 730.v,
//                     width: double.maxFinite,
//                     child: Stack(alignment: Alignment.center, children: [
//                       Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                           height: 809.v,
//                           width: double.maxFinite,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50.h),
//                             gradient: LinearGradient(
//                                 begin: Alignment(0, 0),
//                                 end: Alignment(1, 1),
//                                 colors: [
//                                   appTheme.lightBlueA700.withOpacity(0.65),
//                                   theme.colorScheme.onPrimaryContainer
//                                       .withOpacity(0.65)
//                                 ]),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: double.maxFinite,
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                             margin: EdgeInsets.symmetric(horizontal: 25.h),
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadiusStyle.roundedBorder10),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 _buildFormRow(context),
//                                 SizedBox(height: 16.v),
//                                 Opacity(
//                                     opacity: 0.9,
//                                     child: Text("Top 5",
//                                         style: CustomTextStyles
//                                             .titleSmallGray50_1)),
//                                 SizedBox(height: 2.v),
//                                 _buildUserProfileList(context),
//                                 SizedBox(height: 22.v),
//                                 _buildFormColumn(context)
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ])),
//                 _buildAppBar(context)
//               ]),
//             ),
//             //
//             CustomImageView(
//                 imagePath: ImageConstant.imgGroup2,
//                 height: 753.v,
//                 width: 390.h,
//                 alignment: Alignment.topCenter)
//           ]),
//         ),
//       ),
//     );
//   }

//   // Section Widget
//   Widget _buildFormRow(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
//         decoration: AppDecoration.fillGray
//             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                   width: 165.h,
//                   margin: EdgeInsets.only(bottom: 3.v),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CustomImageView(
//                             imagePath: ImageConstant.imgPngtreeManWea80x80,
//                             height: 80.adaptSize,
//                             width: 80.adaptSize,
//                             radius: BorderRadius.circular(40.h),
//                             margin: EdgeInsets.only(top: 3.v)),
//                         Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Artist", style: theme.textTheme.titleSmall),
//                               Text("Artist Name",
//                                   style: theme.textTheme.bodySmall),
//                               Text("Genre", style: theme.textTheme.bodySmall),
//                               Text("Votes", style: theme.textTheme.titleSmall),
//                               Text("8000", style: theme.textTheme.bodySmall)
//                             ])
//                       ])),
//               CustomImageView(
//                   imagePath: ImageConstant.imgSearchAmber500,
//                   height: 9.adaptSize,
//                   width: 9.adaptSize,
//                   radius: BorderRadius.circular(1.h),
//                   margin: EdgeInsets.only(top: 67.v, right: 10.h, bottom: 10.v))
//             ]));
//   }

//   /// Section Widget
//   Widget _buildUserProfileList(BuildContext context) {
//     return Expanded(
//         child: ListView.separated(
//             physics: BouncingScrollPhysics(),
//             shrinkWrap: true,
//             separatorBuilder: (context, index) {
//               return SizedBox(height: 5.v);
//             },
//             itemCount: 4,
//             itemBuilder: (context, index) {
//               return UserprofilelistItemWidget();
//             }));
//   }

//   /// Section Widget
//   Widget _buildFormColumn(BuildContext context) {
//     return Container(
//         decoration:
//             BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Text("Regions & Reps", style: CustomTextStyles.titleSmallGray50),
//           SizedBox(height: 151.v),
//           _buildRegionRow(context,
//               regionCounterText: "Region 2",
//               contestantsCounterText: "12 Contestants"),
//           SizedBox(height: 5.v),
//           _buildRegionRow(context,
//               regionCounterText: "Region 3",
//               contestantsCounterText: "12 Contestants"),
//           SizedBox(height: 5.v),
//           Container(
//               padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
//               decoration: AppDecoration.gradientWhiteAToWhiteA
//                   .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
//               child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Region 4",
//                               style:
//                                   CustomTextStyles.labelLargeWhiteA700SemiBold),
//                           CustomImageView(
//                               imagePath: ImageConstant.imgArrowDown,
//                               height: 15.adaptSize,
//                               width: 15.adaptSize,
//                               margin: EdgeInsets.only(bottom: 2.v))
//                         ]),
//                     Text("12 Contestants",
//                         style: CustomTextStyles.bodySmallWhiteA700)
//                   ])),
//           SizedBox(height: 5.v),
//           Container(
//               width: 340.h,
//               padding: EdgeInsets.symmetric(horizontal: 10.h),
//               decoration: AppDecoration.gradientWhiteAToWhiteA
//                   .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
//               child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 5.v),
//                     Text("Region 5 ",
//                         style: CustomTextStyles.labelLargeWhiteA700SemiBold),
//                     SizedBox(height: 3.v),
//                     Text("12 Contestants",
//                         style: CustomTextStyles.bodySmallWhiteA700)
//                   ]))
//         ]));
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//         title: AppbarTitleSearchview(
//             margin: EdgeInsets.only(left: 25.h),
//             hintText: "Search...",
//             controller: searchController),
//         actions: [
//           AppbarTrailingIconbuttonOne(
//               imagePath: ImageConstant.imgUserAlt40x40,
//               margin: EdgeInsets.only(left: 15.h, right: 25.h),
//               onTap: () {
//                 onTapUserAlt(context);
//               })
//         ]);
//   }

//   /// Common widget
//   Widget _buildRegionRow(
//     BuildContext context, {
//     required String regionCounterText,
//     required String contestantsCounterText,
//   }) {
//     return Container(
//         padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
//         decoration: AppDecoration.gradientWhiteAToWhiteA
//             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                 Text(regionCounterText,
//                     style: CustomTextStyles.labelLargeWhiteA700SemiBold
//                         .copyWith(color: appTheme.whiteA700.withOpacity(0.8))),
//                 Text(contestantsCounterText,
//                     style: CustomTextStyles.bodySmallWhiteA700
//                         .copyWith(color: appTheme.whiteA700.withOpacity(0.5)))
//               ]),
//               CustomImageView(
//                   imagePath: ImageConstant.imgArrowDown,
//                   height: 15.adaptSize,
//                   width: 15.adaptSize,
//                   margin: EdgeInsets.only(bottom: 16.v))
//             ]));
//   }

//   // Navigate to the profilePageOneScreen when the action is triggered.
//   onTapUserAlt(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.profilePageOneScreen);
//   }
// }
//

class ContestantsPage extends StatelessWidget {
  ContestantsPage({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 730.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 730.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 809.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.h),
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
                          SizedBox(
                            width: double.maxFinite,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25.h),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildFormRow(context),
                                    SizedBox(height: 16.v),
                                    Opacity(
                                      opacity: 0.9,
                                      child: Text(
                                        "Top 5",
                                        style:
                                            CustomTextStyles.titleSmallGray50_1,
                                      ),
                                    ),
                                    SizedBox(height: 2.v),
                                    _buildUserProfileList(context),
                                    SizedBox(height: 22.v),
                                    _buildFormColumn(context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildAppBar(context),
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
      ),
    );
  }

  Widget _buildFormRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 165.h,
            margin: EdgeInsets.only(bottom: 3.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngtreeManWea80x80,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(40.h),
                  margin: EdgeInsets.only(top: 3.v),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Artist", style: theme.textTheme.titleSmall),
                    Text("Artist Name", style: theme.textTheme.bodySmall),
                    Text("Genre", style: theme.textTheme.bodySmall),
                    Text("Votes", style: theme.textTheme.titleSmall),
                    Text("8000", style: theme.textTheme.bodySmall),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSearchAmber500,
            height: 9.adaptSize,
            width: 9.adaptSize,
            radius: BorderRadius.circular(1.h),
            margin: EdgeInsets.only(top: 67.v, right: 10.h, bottom: 10.v),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 5.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }

  Widget _buildFormColumn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Regions & Reps", style: CustomTextStyles.titleSmallGray50),
          SizedBox(height: 151.v),
          _buildRegionRow(
            context,
            regionCounterText: "Region 2",
            contestantsCounterText: "12 Contestants",
          ),
          SizedBox(height: 5.v),
          _buildRegionRow(
            context,
            regionCounterText: "Region 3",
            contestantsCounterText: "12 Contestants",
          ),
          SizedBox(height: 5.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
            decoration: AppDecoration.gradientWhiteAToWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Region 4",
                      style: CustomTextStyles.labelLargeWhiteA700SemiBold,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                  ],
                ),
                Text(
                  "12 Contestants",
                  style: CustomTextStyles.bodySmallWhiteA700,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 340.h,
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            decoration: AppDecoration.gradientWhiteAToWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.v),
                Text(
                  "Region 5 ",
                  style: CustomTextStyles.labelLargeWhiteA700SemiBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  "12 Contestants",
                  style: CustomTextStyles.bodySmallWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 25.h),
        hintText: "Search...",
        controller: searchController,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgUserAlt40x40,
          margin: EdgeInsets.only(left: 15.h, right: 25.h),
          onTap: () {
            onTapUserAlt(context);
          },
        ),
      ],
    );
  }

  Widget _buildRegionRow(
    BuildContext context, {
    required String regionCounterText,
    required String contestantsCounterText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
      decoration: AppDecoration.gradientWhiteAToWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                regionCounterText,
                style: CustomTextStyles.labelLargeWhiteA700SemiBold.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.8),
                ),
              ),
              Text(
                contestantsCounterText,
                style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.5),
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(bottom: 16.v),
          ),
        ],
      ),
    );
  }

  void onTapUserAlt(BuildContext context) {
    // Use Get.to() to navigate to the user profile screen
    //Get.to(() => UserProfileScreen());
    Get.to(() => ProfilePageOneScreen());
  }
}
