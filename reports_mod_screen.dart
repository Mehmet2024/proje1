import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/userprofilegrid_item_widget.dart';

class ReportsModScreen extends StatelessWidget {
  const ReportsModScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0.07),
              end: Alignment(0.5, 0.73),
              colors: [appTheme.purple700, theme.colorScheme.primaryContainer],
            ),
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle1,
                    height: 768.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        right: 24.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 63.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup329,
                            height: 49.v,
                            width: 104.h,
                          ),
                          SizedBox(height: 47.v),// fotograf üst ayar
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 97.v,
                              width: 94.h,
                              margin: EdgeInsets.only(right: 110.h),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse485x83,
                                    height: 85.v,
                                    width: 83.h,
                                    radius: BorderRadius.circular(
                                      41.h,
                                    ),
                                    alignment: Alignment.topLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 35.adaptSize,
                                    width: 35.adaptSize,
                                    alignment: Alignment.bottomRight,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 113.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Melih Yılmaz\n",
                                    style: CustomTextStyles.titleLargeSemiBold,
                                  ),
                                  TextSpan(
                                    text: "@melihhz",
                                    style: CustomTextStyles.titleLargeRegular,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 25.h,
                              right: 17.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                    vertical: 17.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder41,
                                  ),
                                  child: SizedBox(
                                    width: 53.h,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "345\n",
                                            style: CustomTextStyles
                                                .titleMediumOnError_1,
                                          ),
                                          TextSpan(
                                            text: "Takipçi",
                                            style: CustomTextStyles
                                                .titleMediumOnError,
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.h,
                                    vertical: 17.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder41,
                                  ),
                                  child: SizedBox(
                                    width: 42.h,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "198\n",
                                            style: CustomTextStyles
                                                .titleMediumOnError_1,
                                          ),
                                          TextSpan(
                                            text: "Takip",
                                            style: CustomTextStyles
                                                .titleMediumOnError,
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 19.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.h,
                                    vertical: 17.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder41,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 5.v),
                                      SizedBox(
                                        width: 59.h,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "9\n",
                                                style: CustomTextStyles
                                                    .titleMediumOnError_1,
                                              ),
                                              TextSpan(
                                                text: "Gönderi",
                                                style: CustomTextStyles
                                                    .titleMediumOnError,
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 2.v),
                          _buildUserProfileGrid(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70.v,
      leadingWidth: 72.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 49.h,
          top: 5.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "REPORTS MOD",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(left: 10.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastBlueGray100,
          margin: EdgeInsets.fromLTRB(26.h, 5.v, 18.h, 7.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 72.v,
        crossAxisCount: 2,
        mainAxisSpacing: 22.h,
        crossAxisSpacing: 22.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return UserprofilegridItemWidget();
      },
    );
  }
}
