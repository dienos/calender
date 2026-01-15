import 'package:data/repositories/calendar_repository_impl.dart';
import 'package:domain/repositories/calendar_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain/usecases/add_event_usecase.dart';
import 'package:domain/usecases/get_events_usecase.dart';
import 'ui/features/calendar/calendar_view_model.dart';


final calendarRepositoryProvider = Provider<CalendarRepository>((ref) {
  return CalendarRepositoryImpl();
});

final getEventsUseCaseProvider = Provider<GetEventsUseCase>((ref) {
  final repository = ref.watch(calendarRepositoryProvider);
  return GetEventsUseCase(repository);
});

final addEventUseCaseProvider = Provider<AddEventUseCase>((ref) {
  final repository = ref.watch(calendarRepositoryProvider);
  return AddEventUseCase(repository);
});

final calendarViewModelProvider =
    StateNotifierProvider<CalendarViewModel, CalendarState>((ref) {
  final getEvents = ref.watch(getEventsUseCaseProvider);
  final addEvent = ref.watch(addEventUseCaseProvider);
  final now = DateTime.now();
  return CalendarViewModel(
      getEvents,
      addEvent,
      CalendarState(
        selectedDay: now,
        focusedDay: now,
        events: {},
      ));
});
