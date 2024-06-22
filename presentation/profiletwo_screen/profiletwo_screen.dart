import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'widgets/userprofile3_item_widget.dart';

class ProfiletwoScreen extends StatelessWidget {
  const ProfiletwoScreen({Key? key})
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
            padding: EdgeInsets.only(top: 85.v),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 24.v),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRow345takipi(context),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "Melih Yılmaz",
                      style: CustomTextStyles.titleMediumPurple900_1,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Text(
                      "Selam ben Melih Yılmaz",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignalPurple900,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "3 arkadaşın takip ediyor",
                            style: CustomTextStyles.bodyMediumPurple900,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  CustomOutlinedButton(
                    height: 63.v,
                    text: "Takip Et",
                    margin: EdgeInsets.symmetric(horizontal: 19.h),
                    buttonStyle: CustomButtonStyles.outlinePurple,
                    buttonTextStyle: CustomTextStyles.headlineSmallPurple900_1,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 1.v),
                  _buildStackusername(context)
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
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnerror,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 15.v,
          bottom: 19.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "melihhz",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(32.h, 14.v, 32.h, 19.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRow345takipi(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse470x69,
              height: 70.v,
              width: 69.h,
              radius: BorderRadius.circular(
                34.h,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 19.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder37,
              ),
              child: SizedBox(
                width: 50.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "345\n",
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: "Takipçi",
                        style: CustomTextStyles.titleSmallBlack,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18.h),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder37,
              ),
              child: SizedBox(
                width: 39.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "198\n",
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: "Takip",
                        style: CustomTextStyles.titleSmallBlack,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18.h),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder37,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 55.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "5\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "Gönderi",
                            style: CustomTextStyles.titleSmallBlack,
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
    );
  }

  /// Section Widget
  Widget _buildStackusername(BuildContext context) {
    return SizedBox(
      height: 495.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(19.h, 17.v, 19.h, 37.v),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 166.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Userprofile3ItemWidget();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 72.v,
              ),
              decoration: AppDecoration.fillBluegray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 43.v),
                  Text(
                    "Bu profil gizli",
                    style: CustomTextStyles.headlineLargePurple900,
                  ),
                  SizedBox(height: 105.v),
                  CustomElevatedButton(
                    text: "Profili Gör",
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 24.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTrophy,
                        height: 26.v,
                        width: 17.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
