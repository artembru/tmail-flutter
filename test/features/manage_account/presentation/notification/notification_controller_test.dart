import 'package:core/data/network/config/dynamic_url_interceptors.dart';
import 'package:core/presentation/resources/image_paths.dart';
import 'package:core/presentation/utils/app_toast.dart';
import 'package:core/presentation/utils/responsive_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tmail_ui_user/features/caching/caching_manager.dart';
import 'package:tmail_ui_user/features/login/data/network/interceptors/authorization_interceptors.dart';
import 'package:tmail_ui_user/features/login/domain/usecases/delete_authority_oidc_interactor.dart';
import 'package:tmail_ui_user/features/login/domain/usecases/delete_credential_interactor.dart';
import 'package:tmail_ui_user/features/manage_account/data/local/language_cache_manager.dart';
import 'package:tmail_ui_user/features/manage_account/domain/state/get_notification_setting_state.dart';
import 'package:tmail_ui_user/features/manage_account/domain/state/toggle_notification_setting_state.dart';
import 'package:tmail_ui_user/features/manage_account/domain/usecases/get_notification_setting_interactor.dart';
import 'package:tmail_ui_user/features/manage_account/domain/usecases/log_out_oidc_interactor.dart';
import 'package:tmail_ui_user/features/manage_account/domain/usecases/toggle_notification_setting_interactor.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/menu/settings/settings_controller.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/notification/notification_controller.dart';
import 'package:tmail_ui_user/main/bindings/network/binding_tag.dart';
import 'package:uuid/uuid.dart';

import 'notification_controller_test.mocks.dart';

mockControllerCallback() => InternalFinalCallback<void>(callback: () {});
const fallbackGenerators = {
  #onStart: mockControllerCallback,
  #onDelete: mockControllerCallback,
};

@GenerateNiceMocks([
  // BaseController mocks start
  MockSpec<CachingManager>(fallbackGenerators: fallbackGenerators),
  MockSpec<LanguageCacheManager>(fallbackGenerators: fallbackGenerators),
  MockSpec<AuthorizationInterceptors>(),
  MockSpec<DynamicUrlInterceptors>(),
  MockSpec<DeleteCredentialInteractor>(),
  MockSpec<LogoutOidcInteractor>(),
  MockSpec<DeleteAuthorityOidcInteractor>(),
  MockSpec<AppToast>(),
  MockSpec<ImagePaths>(),
  MockSpec<ResponsiveUtils>(),
  MockSpec<Uuid>(),
  // BaseController mocks end
  MockSpec<GetNotificationSettingInteractor>(),
  MockSpec<ToggleNotificationSettingInteractor>(),
  MockSpec<SettingsController>(fallbackGenerators: fallbackGenerators),
])
void main() {
  final getNotificationSettingInteractor 
    = MockGetNotificationSettingInteractor();
  final toggleNotificationSettingInteractor 
    = MockToggleNotificationSettingInteractor();
  late NotificationController notificationController;

  final cachingManager = MockCachingManager();
  final languageCacheManager = MockLanguageCacheManager();
  final authorizationInterceptors = MockAuthorizationInterceptors();
  final dynamicUrlInterceptors = MockDynamicUrlInterceptors();
  final deleteCredentialInteractor = MockDeleteCredentialInteractor();
  final logoutOidcInteractor = MockLogoutOidcInteractor();
  final deleteAuthorityOidcInteractor = MockDeleteAuthorityOidcInteractor();
  final appToast = MockAppToast();
  final imagePaths = MockImagePaths();
  final responsiveUtils = MockResponsiveUtils();
  final uuid = MockUuid();

  final settingsController = MockSettingsController();

  setUpAll(() {
    Get.put<CachingManager>(cachingManager);
    Get.put<LanguageCacheManager>(languageCacheManager);
    Get.put<AuthorizationInterceptors>(authorizationInterceptors);
    Get.put<AuthorizationInterceptors>(
      authorizationInterceptors,
      tag: BindingTag.isolateTag,
    );
    Get.put<DynamicUrlInterceptors>(dynamicUrlInterceptors);
    Get.put<DeleteCredentialInteractor>(deleteCredentialInteractor);
    Get.put<LogoutOidcInteractor>(logoutOidcInteractor);
    Get.put<DeleteAuthorityOidcInteractor>(deleteAuthorityOidcInteractor);
    Get.put<AppToast>(appToast);
    Get.put<ImagePaths>(imagePaths);
    Get.put<ResponsiveUtils>(responsiveUtils);
    Get.put<Uuid>(uuid);

    Get.put<SettingsController>(settingsController);
  });

  setUp(() {
    notificationController = NotificationController(
      getNotificationSettingInteractor,
      toggleNotificationSettingInteractor);
  });

  group('notification controller test', () {
    test(
      'should call execute on getNotificationSettingInteractor '
      'when init',
    () {
      // act
      notificationController.onInit();
      
      // assert
      verify(getNotificationSettingInteractor.execute()).called(1);
    });

    test(
      'should call execute on toggleNotificationSettingInteractor '
      'when toggleNotificationSetting is triggered',
    () {
      // arrange
      notificationController.notificationSettingEnabled.value = true;

      // act
      notificationController.toggleNotificationSetting();
      
      // assert
      verify(toggleNotificationSettingInteractor.execute()).called(1);
    });

    test(
      'should change the value of notificationSettingEnabled '
      'when GetNotificationSettingSuccess is emitted',
    () {
      // arrange
      const isEnabled = true;
      notificationController.handleSuccessViewState(GetNotificationSettingSuccess(isEnabled: isEnabled));
      
      // assert
      expect(notificationController.notificationSettingEnabled.value, isEnabled);
    });

    test(
      'should call backToUniversalSettings on SettingsController '
      'when ToggleNotificationSettingSuccess is emitted',
    () {
      // arrange
      when(settingsController.backToUniversalSettings()).thenReturn(null);
      notificationController.handleSuccessViewState(ToggleNotificationSettingSuccess());
      
      // assert
      verify(settingsController.backToUniversalSettings()).called(1);
    });

    test(
      'should change the value of notificationSettingEnabled to false '
      'when GetNotificationSettingFailure is emitted',
    () {
      // arrange
      notificationController.handleFailureViewState(GetNotificationSettingFailure());
      
      // assert
      expect(notificationController.notificationSettingEnabled.value, false);
    });
  });
}