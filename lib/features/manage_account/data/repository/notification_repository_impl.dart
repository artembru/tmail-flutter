import 'package:tmail_ui_user/features/manage_account/data/datasource/notification_datasource.dart';
import 'package:tmail_ui_user/features/manage_account/domain/repository/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationDataSource _notificationDataSource;

  NotificationRepositoryImpl(this._notificationDataSource);
  
  @override
  Future<bool> getNotificationSetting() {
    return _notificationDataSource.getNotificationSetting();
  }
  
  @override
  Future<void> toggleNotificationSetting() {
    return _notificationDataSource.toggleNotificationSetting();
  }
}