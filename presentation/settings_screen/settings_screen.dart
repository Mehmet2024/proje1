import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userPolicyEditTextController = TextEditingController();

  TextEditingController reportIssueEditTextController = TextEditingController();

  TextEditingController privacyPolicyEditTextController =
      TextEditingController();

  TextEditingController restorePurchaseEditTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
                  vertical: 26.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 35.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector6,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              margin: EdgeInsets.only(
                                top: 13.v,
                                bottom: 50.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse485x83,
                              height: 85.v,
                              width: 83.h,
                              radius: BorderRadius.circular(
                                41.h,
                              ),
                              margin: EdgeInsets.only(left: 70.h),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      width: 113.h,
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
                    SizedBox(height: 12.v),
                    _buildPremiumOrderButton(context),
                    SizedBox(height: 4.v),
                    Text(
                      "Reklamsız devam et",
                      style: CustomTextStyles.titleMediumOnErrorMedium,
                    ),
                    SizedBox(height: 7.v),
                    _buildUserReviewRow(context),
                    SizedBox(height: 9.v),
                    _buildUserPolicyEditText(context),
                    SizedBox(height: 9.v),
                    _buildReportIssueEditText(context),
                    SizedBox(height: 9.v),
                    _buildPrivacyPolicyEditText(context),
                    SizedBox(height: 9.v),
                    _buildRestorePurchaseEditText(context),
                    SizedBox(height: 40.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 27.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevisionOnerror,
                            height: 20.v,
                            width: 21.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "Çıkış Yap",
                              style: CustomTextStyles.titleMediumRedA200,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 20.v,
                            width: 24.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Text(
                              "Hesap Ekle",
                              style: CustomTextStyles.titleMediumLightblue200,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 46.v)
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
  Widget _buildPremiumOrderButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Premium ol",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 17.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 38.v,
          width: 35.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.headlineSmallPurple900_1,
    );
  }

  /// Section Widget
  Widget _buildUserReviewRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 9.v,
              bottom: 6.v,
            ),
            child: Text(
              "Bizi değerlendir",
              style: CustomTextStyles.titleMediumOnError_2,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserPolicyEditText(BuildContext context) {
    return CustomTextFormField(
      controller: userPolicyEditTextController,
      hintText: "Kullanıcı Politikası",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(29.h, 22.v, 26.h, 21.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgFile,
          height: 20.v,
          width: 15.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 63.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildReportIssueEditText(BuildContext context) {
    return CustomTextFormField(
      controller: reportIssueEditTextController,
      hintText: "Sorun Bildir",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(26.h, 21.v, 22.h, 21.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgContrastOnerror,
          height: 20.v,
          width: 22.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 63.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacyPolicyEditText(BuildContext context) {
    return CustomTextFormField(
      controller: privacyPolicyEditTextController,
      hintText: "Gizlilik Sözleşmesi",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(28.h, 21.v, 25.h, 21.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsup,
          height: 20.v,
          width: 18.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 63.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildRestorePurchaseEditText(BuildContext context) {
    return CustomTextFormField(
      controller: restorePurchaseEditTextController,
      hintText: "Satın Alımları Geri Yükle",
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(27.h, 21.v, 24.h, 21.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgQrcode,
          height: 20.v,
          width: 19.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 63.v,
      ),
    );
  }
}
