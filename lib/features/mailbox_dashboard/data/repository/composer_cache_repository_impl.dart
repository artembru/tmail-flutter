import 'package:jmap_dart_client/jmap/mail/email/email.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/data/datasource/local_storage_browser_datasource.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/data/datasource/session_storage_composer_datasource.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/data/model/composer_cache.dart';
import 'package:tmail_ui_user/features/mailbox_dashboard/domain/repository/composer_cache_repository.dart';

class ComposerCacheRepositoryImpl extends ComposerCacheRepository {

  final SessionStorageComposerDatasource composerCacheDataSource;
  final LocalStorageBrowserDatasource _localStorageBrowserDatasource;

  ComposerCacheRepositoryImpl(
    this.composerCacheDataSource,
    this._localStorageBrowserDatasource,
  );

  @override
  ComposerCache getComposerCacheOnWeb() {
    return composerCacheDataSource.getComposerCacheOnWeb();
  }

  @override
  void removeComposerCacheOnWeb() {
    return composerCacheDataSource.removeComposerCacheOnWeb();
  }

  @override
  void saveComposerCacheOnWeb(Email email) {
    return composerCacheDataSource.saveComposerCacheOnWeb(email);
  }

  @override
  Future<Email> getComposedEmailFromLocalStorageBrowser() {
    return _localStorageBrowserDatasource.getComposedEmail();
  }

  @override
  Future<void> storeComposedEmailToLocalStorageBrowser(Email email) {
    return _localStorageBrowserDatasource.storeComposedEmail(email);
  }
}