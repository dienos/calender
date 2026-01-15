import '../entities/event.dart';
import '../repositories/calendar_repository.dart';

class GetEventsUseCase {
  final CalendarRepository _repository;

  GetEventsUseCase(this._repository);

  Future<Map<DateTime, List<Event>>> call() {
    return _repository.getEvents();
  }
}
