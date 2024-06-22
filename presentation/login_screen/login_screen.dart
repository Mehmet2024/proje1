import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
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
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 96.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupPurpleA700,
                      height: 199.v,
                      width: 198.h,
                    ),
                    SizedBox(height: 36.v),
                    Container(
                      height: 22.v,
                      width: 191.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          95.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Container(
                      width: 292.h,
                      margin: EdgeInsets.only(
                        left: 21.h,
                        right: 22.h,
                      ),
                      child: Text(
                        "Instagram adresinle giriş yaparak detaylı analizlere ulaş.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineLargeOnError.copyWith(
                          height: 1.06,
                        ),
                      ),
                    ),
                    SizedBox(height: 68.v),
                    CustomElevatedButton(
                      text: "Instagram Giriş ile Yap",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 14.h),
                        child: CustomImageView(
                          imagePath: ImageConstant
                              .imgInstagramiconwithflatdesignontransparentbackgroundpng1,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleLargePurple900Medium,
                    ),
                    SizedBox(height: 32.v),
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
                    ),
                    SizedBox(height: 29.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
