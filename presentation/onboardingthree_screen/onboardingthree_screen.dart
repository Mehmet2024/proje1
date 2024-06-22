import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class OnboardingthreeScreen extends StatelessWidget {
  const OnboardingthreeScreen({Key? key})
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
          child: SingleChildScrollView(// ekrana sığmıyacak olduğunda ve olan durum bunun mutlaka kullanıyoruz
            padding: EdgeInsets.only(top: 80.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  SizedBox(height: 45.v),
                  _buildColumnView(context),
                  SizedBox(height: 55.v),
                  Container(
                    width: 375.h,
                    height: 65.v,
                    margin: EdgeInsets.symmetric(horizontal: 31.h),
                    child: Text(
                      "Profiline kimlerin baktığını\ngörüntüle",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallSemiBold.copyWith(
                        height: 1.42.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 68.v),//alt boşluk
                  SizedBox(
                    height: 5.v,
                    width: 57.79.h,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 2,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 15,
                        activeDotColor: appTheme.blueGray100,
                        dotColor: appTheme.blueGray100.withOpacity(0.5),
                        activeDotScale: 1.1111111111111112,
                        dotHeight: 10.v,
                        dotWidth: 9.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v, width: 337.h,),
                  CustomElevatedButton(
                    text: "Devam Et",
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.headlineSmallPurple900_1,
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
      centerTitle: true,
      height: 125.v,
      title: SizedBox(
        height: 45.adaptSize,
        width: 45.adaptSize,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup45x45,
              height: 45.adaptSize,
              width: 45.adaptSize,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 45.adaptSize,
              width: 45.adaptSize,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupPurpleA70045x45,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupOnerror,
                    height: 27.v,
                    width: 24.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.fromLTRB(6.h, 6.v, 14.h, 11.v),
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
  Widget _buildColumnView(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 15.v, // Yukarıdaki ekranın boyutnu ayarlıyor
      ),
      decoration: AppDecoration.fillPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder37,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse4101x99,
            height: 101.23.v,
            width: 99.41.h,
            radius: BorderRadius.circular(
              49.h,
            ),
            margin: EdgeInsets.only(left: 72.h),
          ),
          SizedBox(height: 25.v),//Yukarı çizgiler 25
          Container(
            height: 12.v,
            width: 157.h,
            margin: EdgeInsets.only(left: 44.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
          ),
          SizedBox(height: 11.v),//11
          Container(
            height: 12.v,
            width: 93.h,
            margin: EdgeInsets.only(left: 78.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 311.h,
              height: 45.6.v,//45.6
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Son giriş:\n",
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),
                    TextSpan(
                      text: "20.04.2024",
                      style: theme.textTheme.titleLarge,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 25.76.v, width: 11.84.h),//25
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    height: 25.76.v,
                    text: "TAKİP ET",
                    margin: EdgeInsets.only(right: 7.h),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleSmall14,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    height: 25.76.v,
                    text: "ENGELLE",
                    margin: EdgeInsets.only(left: 7.h),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleSmall14,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
