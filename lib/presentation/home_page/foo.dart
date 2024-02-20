  // Widget _buildForm() {
  //     return ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: [
  //         Card(
  //           clipBehavior: Clip.antiAlias,
  //           elevation: 0,
  //           margin: EdgeInsets.all(0),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadiusStyle.roundedBorder10,
  //           ),
  //           child: Container(
  //             height: 220.v,
  //             width: 340.h,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadiusStyle.roundedBorder10,
  //             ),
  //             child: Stack(
  //               alignment: Alignment.center,
  //               children: [
  //                 CustomImageView(
  //                   imagePath: ImageConstant.imgRetroMicrophon,
  //                   height: 220.v,
  //                   width: 340.h,
  //                   radius: BorderRadius.circular(10.h),
  //                   alignment: Alignment.center,
  //                 ),
  //                 Align(
  //                   alignment: Alignment.center,
  //                   child: Padding(
  //                     padding: EdgeInsets.symmetric(horizontal: 7.h),
  //                     child: Column(
  //                       mainAxisSize: MainAxisSize.min,
  //                       children: [
  //                         CustomIconButton(
  //                           height: 35.adaptSize,
  //                           width: 35.adaptSize,
  //                           padding: EdgeInsets.all(7.h),
  //                           decoration: IconButtonStyleHelper.fillBlackC,
  //                           alignment: Alignment.centerRight,
  //                           onTap: () {
  //                             onTapBtnGiftIcon();
  //                           },
  //                           child: CustomImageView(
  //                             imagePath: ImageConstant.imgGiftIcon,
  //                           ),
  //                         ),
  //                         SizedBox(height: 41.v),
  //                         Container(
  //                           height: 40.adaptSize,
  //                           width: 40.adaptSize,
  //                           decoration: AppDecoration.fillBlack9004c1.copyWith(
  //                             borderRadius: BorderRadiusStyle.roundedBorder20,
  //                           ),
  //                           child: CustomImageView(
  //                             imagePath: ImageConstant.imgOverflowMenu,
  //                             height: 40.adaptSize,
  //                             width: 40.adaptSize,
  //                             radius: BorderRadius.circular(20.h),
  //                             alignment: Alignment.center,
  //                           ),
  //                         ),
  //                         SizedBox(height: 47.v),
  //                         Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             GestureDetector(
  //                               onTap: () {
  //                                 onTapFrameNineteen();
  //                               },
  //                               child: Container(
  //                                 height: 35.v,
  //                                 width: 47.h,
  //                                 padding: EdgeInsets.symmetric(
  //                                   horizontal: 9.h,
  //                                   vertical: 6.v,
  //                                 ),
  //                                 decoration:
  //                                     AppDecoration.fillBlack9004c1.copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder10,
  //                                 ),
  //                                 child: CustomImageView(
  //                                   imagePath: ImageConstant.imgVoteIcon,
  //                                   height: 22.v,
  //                                   width: 27.h,
  //                                   alignment: Alignment.center,
  //                                 ),
  //                               ),
  //                             ),
  //                             Container(
  //                               padding: EdgeInsets.symmetric(vertical: 8.v),
  //                               decoration:
  //                                   AppDecoration.fillBlack9004c1.copyWith(
  //                                 borderRadius: BorderRadiusStyle.roundedBorder10,
  //                               ),
  //                               child: Row(
  //                                 mainAxisAlignment: MainAxisAlignment.end,
  //                                 children: [
  //                                   SizedBox(
  //                                     height: 18.v,
  //                                     width: 94.h,
  //                                     child: Stack(
  //                                       alignment: Alignment.center,
  //                                       children: [
  //                                         Align(
  //                                           alignment: Alignment.center,
  //                                           child: Container(
  //                                             height: 18.v,
  //                                             width: 94.h,
  //                                             decoration: BoxDecoration(),
  //                                           ),
  //                                         ),
  //                                         Align(
  //                                           alignment: Alignment.center,
  //                                           child: Text(
  //                                             "lbl_vcash_2000".tr,
  //                                             style: CustomTextStyles
  //                                                 .labelLargeWhiteA700,
  //                                           ),
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                   Container(
  //                                     height: 18.v,
  //                                     width: 76.h,
  //                                     margin: EdgeInsets.only(left: 10.h),
  //                                     child: Stack(
  //                                       alignment: Alignment.center,
  //                                       children: [
  //                                         Align(
  //                                           alignment: Alignment.center,
  //                                           child: Container(
  //                                             height: 18.v,
  //                                             width: 76.h,
  //                                             decoration: BoxDecoration(),
  //                                           ),
  //                                         ),
  //                                         Align(
  //                                           alignment: Alignment.center,
  //                                           child: Text(
  //                                             "lbl_bfv_2000".tr,
  //                                             style: CustomTextStyles
  //                                                 .labelLargeWhiteA700,
  //                                           ),
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     );
  //   }