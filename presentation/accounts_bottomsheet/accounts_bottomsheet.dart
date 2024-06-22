import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class AccountsBottomsheet extends StatelessWidget {
  const AccountsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 88.h),
                  child: Text(
                    "Hesaplarım",
                    style: CustomTextStyles.titleLargePurple900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlinePurple.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder30,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse455x55,
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 17.v,
                    bottom: 18.v,
                  ),
                  child: Text(
                    "melihhz",
                    style: CustomTextStyles.titleMediumPurple900_1,
                  ),
                ),
                Spacer(),
                Container(
                  height: 48.v,
                  width: 47.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    right: 7.h,
                    bottom: 3.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillPurple.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder23,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 16.v,
                    width: 21.h,
                    alignment: Alignment.topCenter,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder30,
            ),
            child: Row(
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
                    top: 3.v,
                    right: 7.h,
                    bottom: 3.v,
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
          SizedBox(height: 14.v),
          CustomElevatedButton(
            text: "Hesap Ekle",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 13.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerror19x32,
                height: 19.v,
                width: 32.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
          ),
          SizedBox(height: 28.v)
        ],
      ),
    );
  }
}
