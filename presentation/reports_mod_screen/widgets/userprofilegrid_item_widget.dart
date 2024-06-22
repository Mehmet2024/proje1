import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofilegridItemWidget extends StatelessWidget {
  const UserprofilegridItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildProfileViewersSection(),
          SizedBox(height: 20.v), // Bölümler arasında boşluk
          _buildUnfollowersSection(),
          SizedBox(height: 2.v),
          _BlockingSection(),
          SizedBox(height: 2.v),
          _nonFollowingSection(),
          SizedBox(height: 1.v),
          _followerWonSection(),
          SizedBox(height: 0.5.v),
          _secretProfileSection(),
        ],
      ),
    );
  }
  Widget _buildProfileViewersSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 6.v),
        CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 18.v,
          width: 36.h,
        ),
        SizedBox(height: 11.v),
        Text(
          "Profilime Bakanlar",
          style: CustomTextStyles.labelLarge13,

        ),
      ],
    );
  }
  Widget _buildUnfollowersSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 3.v),
        CustomImageView(
          imagePath: ImageConstant.imgMaximize, // Takibi bırakanlar için farklı bir ikon
          height: 24.v,
          width: 36.h,
        ),
        SizedBox(height: 11.v),
        Text(
          "Takibi Bırakanlar",
          style: CustomTextStyles.labelLarge13,
        ),
      ],
    );
  }
  Widget _BlockingSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 6.v),
        CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 18.v,
          width: 36.h,
        ),
        SizedBox(height: 11.v),
        Text(
          "Beni Engelleyenler",
          style: CustomTextStyles.labelLarge13,
        ),
      ],
    );
  }
  Widget _nonFollowingSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 1.v),
        CustomImageView(
          imagePath: ImageConstant.imgTelevision, // Takibi bırakanlar için farklı bir ikon
          height: 24.v,
          width: 36.h,
        ),
        SizedBox(height: 11.v),
        Text(
          "Geri Takip Etmeyenler",
          style: CustomTextStyles.labelLarge13,
        ),
      ],
    );
  }
  Widget _followerWonSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 3.v),
        CustomImageView(
          imagePath: ImageConstant.imgGroup, // Takibi bırakanlar için farklı bir ikon
          height: 24.v,
          width: 36.h,
        ),
        SizedBox(height: 11.v),
        Text(
          "Kazanılan Takipçiler",
          style: CustomTextStyles.labelLarge13,
        ),
      ],
    );
  }
  Widget _secretProfileSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 3.v),
        CustomImageView(
          imagePath: ImageConstant.imgIncognitoIcon13, // Takibi bırakanlar için farklı bir ikon
          height: 24.v,
          width: 36.h,
        ),
        SizedBox(height: 11.v),
        Text(
          "Gizli Profili Gör",
          style: CustomTextStyles.labelLarge13,
        ),
      ],
    );
  }
}
