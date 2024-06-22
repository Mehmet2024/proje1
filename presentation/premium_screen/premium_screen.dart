import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/analizler_item_widget.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key})
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
                  horizontal: 19.h,
                  vertical: 23.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupPurpleA700,
                      height: 91.v,
                      width: 90.h,
                    ),
                    SizedBox(height: 20.v),
                    Text(
                      "Analizlerinde hız kesme",
                      style: CustomTextStyles.headlineSmallSemiBold,
                    ),
                    SizedBox(height: 37.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 43.h,
                        right: 54.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 10.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 17.adaptSize,
                                  width: 17.adaptSize,
                                  margin: EdgeInsets.only(left: 4.h),
                                ),
                                SizedBox(height: 12.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIncognitoIcon13,
                                  height: 27.adaptSize,
                                  width: 27.adaptSize,
                                ),
                                SizedBox(height: 10.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCursor,
                                  height: 15.v,
                                  width: 16.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 203.h,
                              margin: EdgeInsets.only(left: 9.h),
                              child: Text(
                                "Sınırsız hikaye gösterimi\nProfiline bakanları gör\nDetaylı istatistikleri gör",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.titleLargeLight.copyWith(
                                  height: 1.70,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 35.v),
                    _buildAnalizler(context),
                    SizedBox(height: 23.v),
                    CustomElevatedButton(
                      text: "Devam Et",
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallPurple900_1,
                    ),
                    SizedBox(height: 69.v)
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
  Widget _buildAnalizler(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 23.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return AnalizlerItemWidget();
      },
    );
  }
}
