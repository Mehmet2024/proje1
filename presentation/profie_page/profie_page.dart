import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/userprofile2_item_widget.dart'; // ignore_for_file: must_be_immutable

class ProfiePage extends StatefulWidget {
  const ProfiePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfiePageState createState() => ProfiePageState();
}

class ProfiePageState extends State<ProfiePage>
    with AutomaticKeepAliveClientMixin<ProfiePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "Melih Yılmaz",
                          style: CustomTextStyles.titleMediumPurple900_1,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "Selam ben Melih Yılmaz",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSignalPurple900,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Sen ve ",
                                      style: CustomTextStyles
                                          .bodyMediumPurple900Light,
                                    ),
                                    TextSpan(
                                      text: "3 arkadaşın takip ediyor",
                                      style: CustomTextStyles
                                          .labelLargePurple900Bold
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 13.v),
                      CustomElevatedButton(
                        text: "Takibi Bırak",
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
                      ),
                      SizedBox(height: 27.v),
                      _buildUserProfile(context)
                    ],
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
  Widget _buildUserProfile(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 166.v,
        crossAxisCount: 3,
        mainAxisSpacing: 6.h,
        crossAxisSpacing: 6.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Userprofile2ItemWidget();
      },
    );
  }
}
