import 'package:core/presentation/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tmail_ui_user/features/base/mixin/app_loader_mixin.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/menu/settings_utils.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/notification/notification_controller.dart';
import 'package:tmail_ui_user/main/localizations/app_localizations.dart';

class NotificationView extends GetWidget<NotificationController> with AppLoaderMixin {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SettingsUtils.getBackgroundColor(context, controller.responsiveUtils),
      padding: SettingsUtils.getMarginViewForSettingDetails(context, controller.responsiveUtils),
      child: Column(
        children: [
          Obx(() {
            if (!controller.isLoading) {
              return const SizedBox(height: 3);
            }
            return horizontalLoadingWidget;
          }),
          Expanded(
            child: Container(
              color: SettingsUtils.getContentBackgroundColor(context, controller.responsiveUtils),
              decoration: SettingsUtils.getBoxDecorationForContent(context, controller.responsiveUtils),
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  Obx(() {
                    if (controller.notificationSettingEnabled.value == null) {
                      return const SizedBox.shrink();
                    }
              
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                AppLocalizations.of(context).showNotifications,
                                style: const TextStyle(
                                  fontSize: 17,
                                  height: 22 / 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                              const SizedBox(height: 12),
                              Text(
                                AppLocalizations.of(context).allowsTwakeMailToNotifyYouWhenANewMessageArrivesOnYourPhone,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 20 / 15,
                                  color: AppColor.colorSettingExplanation),
                              ),
                            ],
                          )
                        ),
                        const SizedBox(width: 12),
                        InkWell(
                          onTap: controller.toggleNotificationSetting,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SvgPicture.asset(
                              controller.notificationSettingEnabled.value!
                                ? controller.imagePaths.icSwitchOn
                                : controller.imagePaths.icSwitchOff,
                              fit: BoxFit.contain,
                              width: 52,
                              height: 32),
                          ),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}