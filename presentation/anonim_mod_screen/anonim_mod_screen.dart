import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/listtext_item_widget.dart';
import 'widgets/story_item_widget.dart';

class AnonimModScreen extends StatelessWidget {
  const AnonimModScreen({Key? key})
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
              colors: [
                appTheme.black90001,
                theme.colorScheme.onSecondaryContainer
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 904.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 904.v,
                      width: double.maxFinite,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup328,
                            height: 49.v,
                            width: 102.h,
                            margin: EdgeInsets.only(left: 109.h),
                          ),
                          SizedBox(height: 27.v),
                          Container(
                            height: 97.v,
                            width: 94.h,
                            margin: EdgeInsets.only(left: 115.h),
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
                                  imagePath: ImageConstant.imgInbox,
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  alignment: Alignment.bottomRight,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Container(
                            width: 113.h,
                            margin: EdgeInsets.only(left: 101.h),
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
                              left: 12.h,
                              right: 49.h,
                            ),
                            child: Row(
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
                          SizedBox(height: 17.v),
                          _buildRowTrophyOne(context),
                          SizedBox(height: 30.v),
                          _buildColumnUnionOne(context),
                          SizedBox(height: 7.v),
                          _buildStory(context),
                          SizedBox(height: 15.v),
                          _buildListText(context)
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
        text: "ANONIM MOD",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(left: 12.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastBlueGray100,
          margin: EdgeInsets.fromLTRB(26.h, 5.v, 19.h, 7.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowTrophyOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23.h),
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrophyBlueGray100,
            height: 26.v,
            width: 17.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Text(
              "Gizli Profili Gör",
              style: CustomTextStyles.titleMediumBluegray100,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSignalPurple300,
            height: 38.v,
            width: 35.h,
            margin: EdgeInsets.only(
              top: 1.v,
              right: 5.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnUnionOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23.h),
      padding: EdgeInsets.symmetric(
        horizontal: 99.h,
        vertical: 1.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup306,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 9.v),
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 15.v,
            width: 22.h,
          ),
          SizedBox(height: 7.v),
          Text(
            "Anonim Story Izle",
            style: CustomTextStyles.titleMediumOnErrorBold,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStory(BuildContext context) {
    return SizedBox(
      height: 90.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 10.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return StoryItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildListText(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 7.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return ListtextItemWidget();
      },
    );
  }
}
