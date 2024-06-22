import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../profie_page/profie_page.dart';

class ProfieTabContainerScreen extends StatefulWidget {
  const ProfieTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfieTabContainerScreenState createState() =>
      ProfieTabContainerScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfieTabContainerScreenState extends State<ProfieTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            decoration: AppDecoration.gradientPurpleToPrimaryContainer,
            child: Column(
              children: [
                SizedBox(height: 39.v),
                _buildAppBar(context),
                SizedBox(height: 45.v),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildTabview(context),
                          Expanded(
                            child: SizedBox(
                              height: 587.v,
                              child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  ProfiePage(),
                                  ProfiePage(),
                                  ProfiePage()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
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
      height: 26.v,
      leadingWidth: 59.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnerror,
        margin: EdgeInsets.only(
          left: 38.h,
          bottom: 5.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "melihhz",
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 70.v,
      width: 335.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse470x69,
                  height: 70.v,
                  width: 69.h,
                  radius: BorderRadius.circular(
                    34.h,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillPurple.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder37,
                  ),
                  child: SizedBox(
                    width: 50.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "345\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "Takipçi",
                            style: CustomTextStyles.titleSmallBlack,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Tab(
            child: SizedBox(
              width: 39.h,
              child: Text(
                "198\nTakip",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 55.h,
              child: Text(
                "5\nGönderi",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
