import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key})
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
            padding: EdgeInsets.only(top: 60.v),//resmi aşağıya taşımak için
            child: Container(
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 645.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(height: 24.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage8585x375,//resmin boyutu
                          height: 685.v,
                          width: 375.h,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup303,
                          height: 2.v,
                          width: 360.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 9.v),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(
                    text: "İndir ve Kaydet",
                    margin: EdgeInsets.symmetric(horizontal: 19.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 11.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameOnerror,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
                  ),
                  SizedBox(height: 26.v)
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
          top: 14.v,
          bottom: 20.v,
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
        AppbarSubtitleThree(
          text: "13s önce",
          margin: EdgeInsets.fromLTRB(11.h, 22.v, 11.h, 15.v),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
