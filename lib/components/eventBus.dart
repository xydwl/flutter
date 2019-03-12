import 'package:event_bus/event_bus.dart';

EventBus eventBus = new EventBus();

class Event {
  String text;
  Event(this.text);
}