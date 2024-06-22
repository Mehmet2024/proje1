import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            width: 85.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 8.v,
              bottom: 9.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "melihhz\n",
                    style: CustomTextStyles.titleMediumPurple900_2,
                  ),
                  TextSpan(
                    text: "Takip ediyorsun",
                    style: CustomTextStyles.labelLargePurple900_1,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkPurple900,
            height: 48.v,
            width: 47.h,
            margin: EdgeInsets.only(
              top: 3.v,
              right: 7.h,
              bottom: 3.v,
            ),
          )
        ],
      ),
    );
  }
}
