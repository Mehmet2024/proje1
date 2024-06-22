import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class MessagelistItemWidget extends StatelessWidget {
  const MessagelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 144.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  height: 52.v,
                  width: 79.h,
                  margin: EdgeInsets.only(top: 4.v),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 79.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "melihhz\n",
                                  style: CustomTextStyles.titleMediumGray900,
                                ),
                                TextSpan(
                                  text: "3 yeni mesaj",
                                  style: CustomTextStyles.titleSmallGray900,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            right: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.purple900,
                            borderRadius: BorderRadius.circular(
                              7.h,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 93.h,
            margin: EdgeInsets.only(
              left: 84.h,
              top: 11.v,
              bottom: 10.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "son görülme:\n",
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                  TextSpan(
                    text: "Premium gerekli",
                    style: CustomTextStyles.labelLargePurple900Bold,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
