import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListtextItemWidget extends StatelessWidget {
  const ListtextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 75.h,
        vertical: 1.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup306,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 16.v,
            width: 23.h,
          ),
          SizedBox(height: 5.v),
          Text(
            "Yakın Arkadaş Story Izle",
            style: CustomTextStyles.titleMediumOnErrorBold,
          )
        ],
      ),
    );
  }
}
