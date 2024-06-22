import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class AnalizlerItemWidget extends StatelessWidget {
  const AnalizlerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.purpleA400,
            appTheme.purple600,
            appTheme.purpleA400
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(11),
          topRight: Radius.circular(11),
          bottomLeft: Radius.circular(11),
          bottomRight: Radius.circular(11),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 10.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haftalık",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Text(
                    "En uygun",
                    style: CustomTextStyles.titleSmallSecondaryContainer,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  right: 19.h,
                  bottom: 8.v,
                ),
                child: Text(
                  "€ 2,99",
                  style: theme.textTheme.headlineSmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
