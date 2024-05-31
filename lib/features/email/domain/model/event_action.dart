
import 'package:equatable/equatable.dart';

enum EventActionType {
  yes,
  maybe,
  no,
  mailToAttendees;
}

class EventAction with EquatableMixin {
  final EventActionType actionType;
  final String link;

  EventAction(this.actionType, this.link);

  factory EventAction.mailToAttendees() {
    return EventAction(EventActionType.mailToAttendees, '');
  }

  @override
  List<Object?> get props => [actionType, link];
}