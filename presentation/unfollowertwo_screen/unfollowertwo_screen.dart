import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'widgets/userprofile1_item_widget.dart';

class UnfollowertwoScreen extends StatelessWidget {
  const UnfollowertwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 42.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildUserProfile(context),
                            SizedBox(height: 7.v),
                            CustomOutlinedButton(
                              text: "Takibi Bırak",
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 30.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    27.h,
                                  ),
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse233,
                                  height: 55.adaptSize,
                                  width: 55.adaptSize,
                                ),
                              ),
                            ),
                            SizedBox(height: 19.v)
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          right: 14.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildAppBar(context),
                            SizedBox(height: 649.v),
                            _buildRowCantorun(context)
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
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 28.v,
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnerror,
        margin: EdgeInsets.only(
          left: 38.h,
          bottom: 7.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "3/26 Seçildi",
      ),
      actions: [
        AppbarTitle(
          text: "Vazgeç",
          margin: EdgeInsets.only(
            left: 15.h,
            top: 4.v,
            right: 15.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowCantorun(BuildContext context) {
    return Opacity(
      opacity: 0.25,
      child: Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 2.v,
        ),
        decoration: AppDecoration.outlineGray4001.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder30,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse555x55,
              height: 55.adaptSize,
              width: 55.adaptSize,
              radius: BorderRadius.circular(
                27.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 18.v,
                bottom: 17.v,
              ),
              child: Text(
                "cantorun",
                style: theme.textTheme.titleMedium,
              ),
            ),
            Spacer(),
            Container(
              height: 48.v,
              width: 47.h,
              margin: EdgeInsets.only(
                top: 4.v,
                right: 7.h,
                bottom: 2.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  24.h,
                ),
                border: Border.all(
                  color: appTheme.gray400,
                  width: 3.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
