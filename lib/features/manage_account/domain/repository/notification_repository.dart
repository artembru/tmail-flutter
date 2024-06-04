abstract class NotificationRepository {
  Future<bool> getNotificationSetting();

  Future<void> toggleNotificationSetting();
}