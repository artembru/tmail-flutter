import 'package:core/presentation/state/failure.dart';
import 'package:core/presentation/state/success.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:tmail_ui_user/features/base/base_controller.dart';
import 'package:tmail_ui_user/features/base/state/base_ui_state.dart';
import 'package:tmail_ui_user/features/manage_account/domain/state/get_notification_setting_state.dart';
import 'package:tmail_ui_user/features/manage_account/domain/state/notification_setting_state.dart';
import 'package:tmail_ui_user/features/manage_account/domain/state/toggle_notification_setting_state.dart';
import 'package:tmail_ui_user/features/manage_account/domain/usecases/get_notification_setting_interactor.dart';
import 'package:tmail_ui_user/features/manage_account/domain/usecases/toggle_notification_setting_interactor.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/menu/settings/settings_controller.dart';

class NotificationController extends BaseController {
  final GetNotificationSettingInteractor _getNotificationSettingInteractor;
  final ToggleNotificationSettingInteractor _toggleNotificationSettingInteractor;

  NotificationController(
    this._getNotificationSettingInteractor,
    this._toggleNotificationSettingInteractor);

  final notificationSettingEnabled = Rxn<bool>();
  final settingsController = Get.find<SettingsController>();

  bool get isLoading => viewState.value.fold(
    (failure) => false,
    (success) => success is NotificationSettingHandling);

  @override
  void onInit() {
    super.onInit();
    _getNotificationSetting();
  }

  @override
  void onClose() {
    dispatchState(Right(UIClosedState()));
    super.onClose();
  }

  @override
  void handleSuccessViewState(Success success) {
    super.handleSuccessViewState(success);
    if (success is GetNotificationSettingSuccess) {
      notificationSettingEnabled.value = success.isEnabled;
    } else if (success is ToggleNotificationSettingSuccess) {
      settingsController.backToUniversalSettings();
    }
  }

  @override
  void handleFailureViewState(Failure failure) {
    super.handleFailureViewState(failure);
    if (failure is GetNotificationSettingFailure) {
        notificationSettingEnabled.value = false;
    }
  }

  void _getNotificationSetting() {
    consumeState(_getNotificationSettingInteractor.execute());
  }

  void toggleNotificationSetting() {
    if (isLoading) return;
    if (notificationSettingEnabled.value == null) return;
    
    consumeState(_toggleNotificationSettingInteractor.execute());
  }
}