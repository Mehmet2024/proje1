import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class NotificationsDialog extends StatelessWidget {
  const NotificationsDialog({Key? key})
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
                width: 253.h,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Gelişmelerden Anında Haberdar Ol\n",
                        style: CustomTextStyles.titleMediumPurple900Bold,
                      ),
                      TextSpan(
                        text: "\n",
                        style: CustomTextStyles.titleSmallPurple900,
                      ),
                      TextSpan(
                        text:
                            "Bildirimleri açarak daha sağlıklı bir x deneyimi yaşayın.",
                        style: CustomTextStyles.titleSmallPurple900Medium,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                height: 51.v,
                text: "Bildirimlere İzin Ver",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
              )
            ],
          ),
        )
      ],
    );
  }
}
