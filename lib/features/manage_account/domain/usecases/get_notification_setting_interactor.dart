import 'package:core/presentation/state/failure.dart';
import 'package:core/presentation/state/success.dart';
import 'package:dartz/dartz.dart';
import 'package:tmail_ui_user/features/manage_account/domain/repository/notification_repository.dart';
import 'package:tmail_ui_user/features/manage_account/domain/state/get_notification_setting_state.dart';

class GetNotificationSettingInteractor {
  final NotificationRepository _notificationRepository;

  GetNotificationSettingInteractor(this._notificationRepository);

  Stream<Either<Failure, Success>> execute() async* {
    try {
      yield Right(GettingNotificationSetting());
      final isEnabled = await _notificationRepository.getNotificationSetting();
      yield Right(GetNotificationSettingSuccess(isEnabled: isEnabled));
    } catch (_) {
      yield Left(GetNotificationSettingFailure());
    }
  }
}