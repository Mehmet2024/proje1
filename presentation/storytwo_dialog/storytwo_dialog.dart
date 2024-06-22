import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable

class StorytwoDialog extends StatelessWidget {
  const StorytwoDialog({Key? key})
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
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 199.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.fillOnError.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 38.v,
                      width: 35.h,
                    ),
                    SizedBox(height: 12.v),
                    SizedBox(
                      width: 172.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Hikayeleri Gizli İzlemeye Devam Etmek için ",
                              style: CustomTextStyles
                                  .headlineSmallPurple900SemiBold,
                            ),
                            TextSpan(
                              text: "Premium",
                              style:
                                  CustomTextStyles.headlineSmallPurple900Black,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "ol",
                              style: CustomTextStyles
                                  .headlineSmallPurple900SemiBold,
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10.v)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
