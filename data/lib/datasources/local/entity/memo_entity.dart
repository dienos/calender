import 'package:floor/floor.dart';

@entity
class MemoEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  @ColumnInfo(name: 'memo_text')
  final String memoText;

  final DateTime date;

  MemoEntity({this.id, required this.memoText, required this.date});
}
