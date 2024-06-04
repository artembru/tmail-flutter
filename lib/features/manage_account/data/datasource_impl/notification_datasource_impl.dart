import 'package:app_settings/app_settings.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tmail_ui_user/features/manage_account/data/datasource/notification_datasource.dart';
import 'package:tmail_ui_user/main/exceptions/exception_thrower.dart';
import 'package:tmail_ui_user/main/permissions/permission_service.dart';

class NotificationDataSourceImpl implements NotificationDataSource {
  final PermissionService _permissionService;
  final ExceptionThrower _exceptionThrower;

  NotificationDataSourceImpl(
    this._permissionService,
    this._exceptionThrower);

  @override
  Future<bool> getNotificationSetting() {
    return Future.sync(() async {
      return await _permissionService.isGranted(Permission.notification);
    }).catchError(_exceptionThrower.throwException);
  }
  
  @override
  Future<void> toggleNotificationSetting() async {
    return Future.sync(() async {
      return await AppSettings.openAppSettings(type: AppSettingsType.notification);
    }).catchError(_exceptionThrower.throwException);
  }
}