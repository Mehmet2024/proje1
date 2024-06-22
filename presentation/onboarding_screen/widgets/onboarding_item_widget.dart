import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class OnboardingItemWidget extends StatelessWidget {
  const OnboardingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder37,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse4,
            height: 76.v,
            width: 75.h,
            radius: BorderRadius.circular(
              37.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5,
            height: 76.v,
            width: 75.h,
            radius: BorderRadius.circular(
              37.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 13.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 14.v,
                  width: 127.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Container(
                  height: 14.v,
                  width: 71.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              right: 4.h,
              bottom: 5.v,
            ),
            child: CustomIconButton(
              height: 66.v,
              width: 65.h,
              padding: EdgeInsets.all(16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgContrast,
              ),
            ),
          )
        ],
      ),
    );
  }
}
