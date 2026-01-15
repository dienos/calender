import 'package:domain/entities/event.dart';
import 'package:domain/repositories/calendar_repository.dart';

class CalendarRepositoryImpl implements CalendarRepository {
  final Map<DateTime, List<Event>> _events = {};

  @override
  Future<Map<DateTime, List<Event>>> getEvents() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _events;
  }

  @override
  Future<void> addEvent(DateTime date, Event newEvent) async {
    await Future.delayed(const Duration(milliseconds: 100));

    final dateOnly = DateTime.utc(date.year, date.month, date.day);

    final currentEvents = _events[dateOnly] ?? [];
    final updatedEvents = List<Event>.from(currentEvents)..add(newEvent);
    _events[dateOnly] = updatedEvents;
  }
}
