import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class OnboardingtwoScreen extends StatelessWidget {
  const OnboardingtwoScreen({Key? key})
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
              height: 825.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildStackCreateFrom(context),
                        SizedBox(height: 18.v),
                        Container(
                          width: 317.h,
                          margin: EdgeInsets.symmetric(horizontal: 28.h),
                          child: Text(
                            "Hikayeleri kimse farketmeden\ngizlice izle",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                CustomTextStyles.headlineSmallSemiBold.copyWith(
                              height: 1.42,
                            ),
                          ),
                        ),
                        SizedBox(height: 53.v),
                        SizedBox(
                          height: 13.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: 1,
                            count: 3,
                            effect: ScrollingDotsEffect(
                              spacing: 15,
                              activeDotColor: appTheme.blueGray100,
                              dotColor: appTheme.blueGray100.withOpacity(0.5),
                              activeDotScale: 1.1111111111111112,
                              dotHeight: 9.v,
                              dotWidth: 9.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        CustomElevatedButton(
                          text: "Devam Et",
                          margin: EdgeInsets.symmetric(horizontal: 19.h),
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallPurple900_1,
                        )
                      ],
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
      height: 120.v,
      centerTitle: true,
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

  /// Section Widget //Sağdaki fotograf kısımı
  Widget _buildStackCreateFrom(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 369.v,
        width: 418.h,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 369.v,
                width: double.maxFinite,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 369.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 269.h,
                                right: 2.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage7,
                                    height: 184.v,
                                    width: 103.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage10,
                                    height: 184.v,
                                    width: 103.h,
                                  )
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2,
                            height: 184.v,
                            width: 103.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 60.h),
                          ),
                          CustomImageView(//sol kısım resimleri
                            imagePath: ImageConstant.imgImage3,
                            height: 184.v,
                            width: 103.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 106.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 184.v,
                            width: 103.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 61.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage6,
                            height: 184.v,
                            width: 104.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 106.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage7,
                            height: 184.v,
                            width: 103.h,
                            alignment: Alignment.topLeft,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage10,
                            height: 184.v,
                            width: 103.h,
                            alignment: Alignment.bottomLeft,
                          ),
                          Align(//büyüteç
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 220.v,
                              width: 269.h,
                              margin: EdgeInsets.only(
                                left: 30.h,
                                top: 26.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 36.h,
                                vertical: 37.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup16,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup11,
                                height: 82.adaptSize,
                                width: 82.adaptSize,
                                alignment: Alignment.topLeft,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 184.v,
                      width: 103.h,
                      margin: EdgeInsets.only(bottom: 184.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage5,
                      height: 184.v,
                      width: 103.h,
                      margin: EdgeInsets.only(top: 184.v),
                    ),
                    Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage3,
                          height: 184.v,
                          width: 103.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage6,
                          height: 184.v,
                          width: 104.h,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
