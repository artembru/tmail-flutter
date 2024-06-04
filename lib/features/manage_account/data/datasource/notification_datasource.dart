abstract class NotificationDataSource {
  Future<bool> getNotificationSetting();

  Future<void> toggleNotificationSetting();
}