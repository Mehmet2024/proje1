import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_title_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChatpanelScreen extends StatelessWidget {
  ChatpanelScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController cameraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
            padding: EdgeInsets.only(top: 56.v),
            child: Container(
              margin: EdgeInsets.only(
                left: 1.h,
                right: 1.h,
                bottom: 15.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 85.v),//alt kısmın yukarı aşağı kontrolü
                  Container(
                    margin: EdgeInsets.only(
                      left: 33.h,
                      right: 36.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 5.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup149,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 202.v,
                          width: 209.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 6.h),
                                  child: Text(
                                    "20:35",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 200.v,
                                  width: 209.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle153,
                                        height: 200.v,
                                        width: 209.h,
                                        radius: BorderRadius.circular(
                                          11.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.h,
                                            right: 12.h,
                                            bottom: 10.v,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 18.h,
                                                  right: 22.h,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 7.h,
                                                  vertical: 10.v,
                                                ),
                                                decoration: AppDecoration
                                                    .outlinePrimary1
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder11,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSignal,
                                                      height: 23.v,
                                                      width: 21.h,
                                                    ),
                                                    SizedBox(height: 8.v),
                                                    SizedBox(
                                                      width: 126.h,
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  "Görünüşe göre içerik silinmiş.\nGörmek için ",
                                                              style: CustomTextStyles
                                                                  .labelMediumPurple900
                                                                  .copyWith(
                                                                height: 1.27,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  "Premuim ol.",
                                                              style: CustomTextStyles
                                                                  .labelMediumPurple900Black,
                                                            )
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.v)
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 35.v),
                                              CustomElevatedButton(
                                                height: 33.v,
                                                text: "Premium ol",
                                                leftIcon: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 2.h),
                                                  child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgSignal,
                                                    height: 20.v,
                                                    width: 19.h,
                                                  ),
                                                ),
                                                buttonStyle: CustomButtonStyles
                                                    .outlinePrimaryTL111,
                                                buttonTextStyle: CustomTextStyles
                                                    .titleMediumPurple900Medium,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Attım ama hemen silcem tm mı",
                            style: CustomTextStyles.bodySmallPrimary,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 36.h),
                            child: Text(
                              "20:35",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            right: 1.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text(
                                  "hızlı bak ya siliyorum çabuukk çocuk",
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 42.h,
                                  top: 6.v,
                                ),
                                child: Text(
                                  "20:41",
                                  style: theme.textTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: Text(
                                  "Ben Melih Yılmaz.",
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  top: 9.v,
                                ),
                                child: Text(
                                  "20:55",
                                  style: theme.textTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v)
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse536x35,
                    height: 36.v,
                    width: 35.h,
                    radius: BorderRadius.circular(
                      17.h,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 84.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 37.v,
                            width: 200.h,
                            margin: EdgeInsets.only(bottom: 25.v),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUnionPurple90037x209,
                                  height: 37.v,
                                  width: 209.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 6.v),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text(
                                            "23:43",
                                            style: CustomTextStyles
                                                .bodySmallOnError,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10.h,
                                            bottom: 2.v,
                                          ),
                                          child: Text(
                                            "Ben x kullanıyorum moruk xd",
                                            style: CustomTextStyles
                                                .bodySmallOnError12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse636x35,
                            height: 30.v,
                            width: 35.h,
                            radius: BorderRadius.circular(
                              17.h,
                            ),
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 37.v,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  _buildRowUnionThree(context),
                  SizedBox(height: 28.v),
                  CustomTextFormField(
                    controller: cameraController,
                    hintText: "Mesaj yaz",
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 8.v,
                      ),
                      margin: EdgeInsets.fromLTRB(9.h, 3.v, 12.h, 3.v),
                      decoration: BoxDecoration(
                        color: appTheme.purple900,
                        borderRadius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCamera,
                        height: 31.v,
                        width: 15.h,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 35.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 11.v, 22.h, 9.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup369,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 35.v,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 7.v),
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
      height: 168.v,
      centerTitle: true,
      title: Column(
        children: [
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,//melihhz üat kısmın kontrolü
              right: 63.h,
            ),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowLeftGray800,
                  margin: EdgeInsets.symmetric(vertical: 9.v),
                  onTap: () {
                    onTapArrowleftone(context);
                  },
                ),
                AppbarTitleImageOne(
                  imagePath: ImageConstant.imgEllipse440x39,
                  margin: EdgeInsets.only(left: 9.h),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 2.v,
                    bottom: 1.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitleTwo(
                        text: "Melihhz",
                        margin: EdgeInsets.only(
                          left: 1.h,
                          right: 121.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Son görülme: ",
                                style: CustomTextStyles.labelLargeGray800,
                              ),
                              TextSpan(
                                text: "PREMIUM",
                                style: CustomTextStyles.labelLargePurple900
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " gerekli",
                                style: CustomTextStyles.labelLargeGray800,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 335.h,
              child: Divider(),
            ),
          )
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildRowUnionThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse536x35,
            height: 36.v,
            width: 35.h,
            radius: BorderRadius.circular(
              17.h,
            ),
            margin: EdgeInsets.only(top: 59.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Column(
                children: [
                  SizedBox(
                    height: 80.v,
                    width: 390.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnionGray400,
                          height: 107.v,//Görünüşe göre premimum ayarı
                          width: 829.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              right: 12.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 95.h),
                                  child: Text(
                                    "Cumartesi",
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.labelMediumPrimary
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 13.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5.v,bottom: 10.v),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  "Görünüşe göre içerik silinmiş. Görmek için ",
                                              style: CustomTextStyles
                                                  .labelMediumPurple900,
                                            ),
                                            TextSpan(
                                              text: "Premuim ol.",
                                              style: CustomTextStyles
                                                  .labelMediumPurple900Black,
                                            )
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 13.h,
                                        top: 7.v,
                                      ),
                                      child: Text(
                                        "01:49",
                                        style: theme.textTheme.bodySmall,
                                      ),
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
                  SizedBox(height: 4.v),
                  CustomElevatedButton(
                    height: 33.v,
                    width: 181.h,
                    text: "Premium ol",
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 20.v,
                        width: 19.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL111,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumPurple900Medium,
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
