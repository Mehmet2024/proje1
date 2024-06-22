import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UnfollowerScreen extends StatelessWidget {
  UnfollowerScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController rowCantorunEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0.07),
              end: Alignment(0.5, 0.73),
              colors: [appTheme.purple700, theme.colorScheme.primaryContainer],
            ),
          ),
          child: SizedBox(
            height: 686.v,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildUserprofile(context),
                _buildRowcantorun(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnerror,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 13.v,
          bottom: 21.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Takibi Bırakanlar",
      ),
      actions: [
        AppbarTitle(
          text: "Seç",
          margin: EdgeInsets.fromLTRB(31.h, 18.v, 31.h, 13.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserprofile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(top: 4.v),
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 44.v,
        ),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 8.v,
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return UserprofileItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCantorunEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 6.v,
        bottom: 5.v,
      ),
      child: CustomTextFormField(
        width: 126.h,
        controller: rowCantorunEditTextController,
        hintText: "Sıradan",
        hintStyle: theme.textTheme.labelLarge!,
        textInputAction: TextInputAction.done,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(20.h, 12.v, 18.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgLockBlueGray100,
            height: 18.v,
            width: 15.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 43.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 14.v,
          right: 29.h,
          bottom: 14.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillPurple,
        fillColor: appTheme.purple900,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcantorun(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          top: 640.v,
          right: 26.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse555x55,
              height: 55.adaptSize,
              width: 55.adaptSize,
              radius: BorderRadius.circular(
                27.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 18.v,
                bottom: 16.v,
              ),
              child: Text(
                "cantorun",
                style: theme.textTheme.titleMedium,
              ),
            ),
            Spacer(),
            _buildRowCantorunEditText(context)
          ],
        ),
      ),
    );
  }


  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
