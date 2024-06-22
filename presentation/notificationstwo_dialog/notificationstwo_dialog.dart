import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class NotificationstwoDialog extends StatelessWidget {
  const NotificationstwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 327.h,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 17.v,
          ),
          decoration: AppDecoration.fillOnError.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 21.adaptSize,
                width: 21.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 32.v),
              Container(
                width: 249.h,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Bizi Değerlendir\n\n",
                        style: CustomTextStyles.titleMediumPurple900Bold,
                      ),
                      TextSpan(
                        text: "Daha iyi bir deneyim için bize yardımcı ol",
                        style: CustomTextStyles.titleSmallPurple900Medium,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                height: 51.v,
                text: "Bizi Değerlendir",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
              )
            ],
          ),
        )
      ],
    );
  }
}
