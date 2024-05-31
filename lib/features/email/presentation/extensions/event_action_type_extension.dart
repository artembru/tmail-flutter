
import 'package:flutter/material.dart';
import 'package:tmail_ui_user/features/email/domain/model/event_action.dart';
import 'package:tmail_ui_user/main/localizations/app_localizations.dart';

extension EventActionTypeExtension on EventActionType {

  String getLabelButton(BuildContext context) {
    switch(this) {
      case EventActionType.yes:
        return AppLocalizations.of(context).yes;
      case EventActionType.maybe:
        return AppLocalizations.of(context).maybe;
      case EventActionType.no:
        return AppLocalizations.of(context).no;
      case EventActionType.mailToAttendees:
        return AppLocalizations.of(context).mailToAttendees;
    }
  }
}