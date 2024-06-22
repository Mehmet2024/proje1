import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse455x55,
            height: 55.adaptSize,
            width: 55.adaptSize,
            radius: BorderRadius.circular(
              27.h,
            ),
          ),
          Container(
            width: 87.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 11.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "melihhz\n",
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: "Takip Ediyorsun",
                    style: CustomTextStyles.bodyMediumPurple900Light,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          _buildUserProfileButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileButton(BuildContext context) {
    return CustomElevatedButton(
      height: 43.v,
      width: 126.h,
      text: "Gizli Takipçi",
      margin: EdgeInsets.only(
        top: 6.v,
        bottom: 7.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUnion,
          height: 15.v,
          width: 22.h,
        ),
      ),
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }
}
