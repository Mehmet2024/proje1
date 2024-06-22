import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/onboarding_item_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
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
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 9.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupPurpleA700,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                    ),
                    SizedBox(height: 50.v),
                    _buildOnboarding(context),
                    SizedBox(height: 28.v),
                    Container(
                      width: 272.h,
                      margin: EdgeInsets.symmetric(horizontal: 36.h),
                      child: Text(
                        "Seni kimin engellediğini\nve takibi bıraktığını öğren",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallSemiBold.copyWith(
                          height: 1.42,
                        ),
                      ),
                    ),
                    SizedBox(height: 59.v),
                    SizedBox(
                      height: 10.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 14.79,
                          activeDotColor: appTheme.blueGray100,
                          dotColor: appTheme.blueGray100.withOpacity(0.5),
                          activeDotScale: 1.1111111111111112,
                          dotHeight: 9.v,
                          dotWidth: 9.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 63.v),
                    CustomElevatedButton(
                      text: "Devam Et",
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallPurple900_1,
                    ),
                    SizedBox(width: 63.v)
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
  Widget _buildOnboarding(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      decoration: AppDecoration.outlinePrimary,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return OnboardingItemWidget();
        },
      ),
    );
  }
}
