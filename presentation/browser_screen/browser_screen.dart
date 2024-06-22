import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class BrowserScreen extends StatelessWidget {
  const BrowserScreen({Key? key})
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
            padding: EdgeInsets.only(top: 8.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  SizedBox(height: 46.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImg38731,
                    height: 642.v,
                    width: 375.h,
                  ),
                  SizedBox(height: 23.v),
                  SizedBox(
                    width: 220.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Giriş yaparak ",
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: "Kullanım Şartları",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: " ve\n",
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: "Gizlilik Politikası",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: "nı kabul ediyorsunuz.",
                            style: theme.textTheme.bodyMedium,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
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
      centerTitle: true,
      height: 46.h,
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
}
