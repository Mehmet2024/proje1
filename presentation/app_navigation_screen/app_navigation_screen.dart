import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../accounts_bottomsheet/accounts_bottomsheet.dart';
import '../notifications_dialog/notifications_dialog.dart';
import '../notificationstwo_dialog/notificationstwo_dialog.dart';
import '../storytwo_dialog/storytwo_dialog.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnError,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OnboardingTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OnboardingThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingthreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Browser",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.browserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Premium",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.premiumScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reports Mod",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reportsModScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accounts - BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context, AccountsBottomsheet()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Unfollower",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.unfollowerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UnfollowerTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.unfollowertwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profie - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profieTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profiletwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Story",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.storyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "StoryTwo - Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, StorytwoDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications - Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, NotificationsDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "NotificationsTwo - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context, NotificationstwoDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DM",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.dmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChatPanel",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatpanelScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Anonim Mod",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.anonimModScreen),
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
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnError,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.primary.withOpacity(1),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: theme.colorScheme.primary.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnError,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme.colorScheme.primary.withOpacity(1),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
