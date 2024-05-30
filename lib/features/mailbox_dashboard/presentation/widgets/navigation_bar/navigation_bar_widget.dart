import 'package:core/presentation/extensions/color_extension.dart';
import 'package:core/presentation/resources/image_paths.dart';
import 'package:core/presentation/utils/responsive_utils.dart';
import 'package:core/presentation/views/button/tmail_button_widget.dart';
import 'package:core/presentation/views/image/avatar_builder.dart';
import 'package:core/utils/application_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:get/get.dart';
import 'package:model/user/user_profile.dart';
import 'package:tmail_ui_user/features/base/widget/application_logo_with_text_widget.dart';
import 'package:tmail_ui_user/features/base/widget/application_version_widget.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/presentation/controller/app_grid_dashboard_controller.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/presentation/styles/navigation_bar_style.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/presentation/widgets/app_dashboard/app_grid_dashboard_overlay.dart';
import 'package:tmail_ui_user/main/utils/app_config.dart';
import 'package:tmail_ui_user/main/utils/app_utils.dart';

class NavigationBarWidget extends StatelessWidget {

  final ImagePaths _imagePaths = Get.find<ImagePaths>();
  final ApplicationManager _applicationManager = Get.find<ApplicationManager>();

  final UserProfile? userProfile;
  final Widget? searchForm;
  final AppGridDashboardController? appGridController;
  final VoidCallback? onTapApplicationLogoAction;
  final VoidCallback? onShowAppDashboardAction;
  final OnTapAvatarActionWithPositionClick? onTapAvatarAction;

  NavigationBarWidget({
    super.key,
    this.userProfile,
    this.searchForm,
    this.appGridController,
    this.onShowAppDashboardAction,
    this.onTapApplicationLogoAction,
    this.onTapAvatarAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: NavigationBarStyle.barHeight,
      color: Colors.white,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: NavigationBarStyle.horizontalMargin),
      child: Row(children: [
        SizedBox(
          width: ResponsiveUtils.defaultSizeMenu - NavigationBarStyle.horizontalMargin,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ApplicationLogoWidthTextWidget(onTapAction: onTapApplicationLogoAction),
              ApplicationVersionWidget(applicationManager: _applicationManager)
            ],
          ),
        ),
        if (searchForm != null)
          Expanded(child: LayoutBuilder(builder: (context, constraint) {
            return Row(
              children: [
                SizedBox(
                  width: constraint.maxWidth / 2,
                  height: 52,
                  child: searchForm
                ),
                const Spacer(),
                if (AppConfig.appGridDashboardAvailable && appGridController != null)
                  Obx(() {
                    final isAppGridOpen = appGridController!.isAppGridDashboardOverlayOpen.value;
                    return PortalTarget(
                        visible: isAppGridOpen,
                        portalFollower: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: appGridController!.toggleAppGridDashboard
                        ),
                        child: PortalTarget(
                          anchor: Aligned(
                            follower: AppUtils.isDirectionRTL(context)
                              ? Alignment.topLeft
                              : Alignment.topRight,
                            target: AppUtils.isDirectionRTL(context)
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight
                          ),
                          portalFollower: Obx(() {
                            final listApps = appGridController!.linagoraApplications.value;
                            if (listApps != null) {
                              return AppDashboardOverlay(listApps);
                            }
                            return const SizedBox.shrink();
                          }),
                          visible: isAppGridOpen,
                          child: TMailButtonWidget.fromIcon(
                            icon: _imagePaths.icAppDashboard,
                            backgroundColor: Colors.transparent,
                            onTapActionCallback: onShowAppDashboardAction,
                          ),
                        )
                    );
                  }),
                const SizedBox(width: 16),
                (AvatarBuilder()
                  ..text(userProfile?.getAvatarText() ?? '')
                  ..backgroundColor(Colors.white)
                  ..textColor(Colors.black)
                  ..context(context)
                  ..size(48)
                  ..addOnTapAvatarActionWithPositionClick(onTapAvatarAction)
                  ..addBoxShadows([
                    const BoxShadow(
                      color: AppColor.colorShadowBgContentEmail,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 0.5)
                    )
                  ])
                ).build()
              ]
            );
          }))
        else
          ...[
            const Spacer(),
            if (AppConfig.appGridDashboardAvailable && appGridController != null)
              Obx(() {
                final isAppGridOpen = appGridController!.isAppGridDashboardOverlayOpen.value;
                return PortalTarget(
                  visible: isAppGridOpen,
                  portalFollower: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: appGridController!.toggleAppGridDashboard
                  ),
                  child: PortalTarget(
                    anchor: Aligned(
                      follower: AppUtils.isDirectionRTL(context)
                        ? Alignment.topLeft
                        : Alignment.topRight,
                      target: AppUtils.isDirectionRTL(context)
                        ? Alignment.bottomLeft
                        : Alignment.bottomRight
                    ),
                    portalFollower: Obx(() {
                      final listApps = appGridController!.linagoraApplications.value;
                      if (listApps != null) {
                        return AppDashboardOverlay(listApps);
                      }
                      return const SizedBox.shrink();
                    }),
                    visible: isAppGridOpen,
                    child: TMailButtonWidget.fromIcon(
                      icon: _imagePaths.icAppDashboard,
                      backgroundColor: Colors.transparent,
                      onTapActionCallback: onShowAppDashboardAction,
                    ),
                  )
                );
              }),
            const SizedBox(width: 16),
            (AvatarBuilder()
              ..text(userProfile?.getAvatarText() ?? '')
              ..backgroundColor(Colors.white)
              ..textColor(Colors.black)
              ..context(context)
              ..size(48)
              ..addOnTapAvatarActionWithPositionClick(onTapAvatarAction)
              ..addBoxShadows([
                const BoxShadow(
                  color: AppColor.colorShadowBgContentEmail,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 0.5)
                )
              ])
            ).build()
          ]
      ]),
    );
  }
}
