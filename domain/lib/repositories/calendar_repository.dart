import '../entities/daily_record.dart';

abstract class CalendarRepository {
  Future<Map<DateTime, List<DailyRecord>>> getEvents();
  Future<void> addEvent(DateTime date, DailyRecord newRecord);
}
