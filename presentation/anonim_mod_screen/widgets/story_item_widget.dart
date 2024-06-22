import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class StoryItemWidget extends StatelessWidget {
  const StoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 53.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 89.v),//Ananim Story izle altındaki prfil kısımlarında oluşan boyut sorunu
        child: Column(
          children: [
            Container(
              height: 53.adaptSize,
              width: 53.adaptSize,
              padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.outlineOnError1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder27,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse2346x46,
                height: 46.adaptSize,
                width: 46.adaptSize,
                radius: BorderRadius.circular(
                  23.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 1.v),
            SizedBox(
              width: 21.h,
              child: Text(
                "selinoz",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeOnError,
              ),
            )

          ],
        ),
      ),
    );
  }
}
