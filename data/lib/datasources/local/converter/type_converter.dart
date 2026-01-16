import 'package:floor/floor.dart';

// DateTime을 int (millisecondsSinceEpoch)로 변환하고,
// int를 다시 DateTime으로 변환하는 방법을 floor에게 알려줍니다.
class DateTimeConverter extends TypeConverter<DateTime, int> {
  @override
  DateTime decode(int databaseValue) {
    return DateTime.fromMillisecondsSinceEpoch(databaseValue);
  }

  @override
  int encode(DateTime value) {
    return value.millisecondsSinceEpoch;
  }
}
