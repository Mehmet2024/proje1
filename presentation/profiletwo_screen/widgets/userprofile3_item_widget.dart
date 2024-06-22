import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 165.v,
        width: 108.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage7165x108,
              height: 165.v,
              width: 108.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 165.v,
                width: 108.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7165x108,
                      height: 165.v,
                      width: 108.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFavoriteOnerror,
                              height: 11.v,
                              width: 13.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "89",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnionOnerror,
                              height: 12.v,
                              width: 14.h,
                              margin: EdgeInsets.only(left: 17.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "2",
                                style: theme.textTheme.labelMedium,
                              ),
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
    );
  }
}
