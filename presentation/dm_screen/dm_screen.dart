import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/messagelist_item_widget.dart';

class DmScreen extends StatelessWidget {
  const DmScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildMessageList(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 25.h,
                        right: 31.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAppBar(context),
                          SizedBox(height: 654.v),
                          Opacity(
                            opacity: 0.25,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse455x55,
                                  height: 55.adaptSize,
                                  width: 55.adaptSize,
                                  radius: BorderRadius.circular(
                                    27.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 9.h,
                                    top: 5.v,
                                    bottom: 29.v,
                                  ),
                                  child: Text(
                                    "canntorun",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(top: 86.v),
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
              height: 17.v,
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return MessagelistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 28.v,
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnerror,
        margin: EdgeInsets.only(
          left: 38.h,
          bottom: 7.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Gelen Kutusu",
      ),
      actions: [
        AppbarTitle(
          text: "Seç",
          margin: EdgeInsets.only(
            left: 31.h,
            top: 4.v,
            right: 31.h,
          ),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
