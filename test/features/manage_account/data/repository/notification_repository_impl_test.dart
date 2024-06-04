import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tmail_ui_user/features/manage_account/data/datasource/notification_datasource.dart';
import 'package:tmail_ui_user/features/manage_account/data/repository/notification_repository_impl.dart';

import 'notification_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<NotificationDataSource>()])
void main() {
  final notificationDataSource = MockNotificationDataSource();
  final notificationRepositoryImpl = NotificationRepositoryImpl(notificationDataSource);

  group('notification repository impl test:', () {
    test(
      'should call getNotificationSetting '
      'when getNotificationSetting in datasource is called',
    () {
      // arrange
      when(notificationDataSource.getNotificationSetting())
        .thenAnswer((_) async => true);

      // act
      notificationRepositoryImpl.getNotificationSetting();

      // assert
      verify(notificationDataSource.getNotificationSetting()).called(1);
    });

    test(
      'should call toggleNotificationSetting '
      'when toggleNotificationSetting in datasource is called',
    () {
      // arrange
      when(notificationDataSource.toggleNotificationSetting())
        .thenAnswer((_) async => true);

      // act
      notificationRepositoryImpl.toggleNotificationSetting();

      // assert
      verify(notificationDataSource.toggleNotificationSetting()).called(1);
    });
  });
}