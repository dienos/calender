import '../entities/event.dart';
import '../repositories/calendar_repository.dart';

// 이벤트를 추가하는 단일 비즈니스 로직을 캡슐화합니다.
class AddEventUseCase {
  final CalendarRepository _repository;

  AddEventUseCase(this._repository);

  Future<void> call(DateTime date, Event newEvent) {
    return _repository.addEvent(date, newEvent);
  }
}
