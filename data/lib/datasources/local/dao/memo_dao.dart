import 'package:floor/floor.dart';
import '../entity/memo_entity.dart';

@dao
abstract class MemoDao {
  @Query('SELECT * FROM MemoEntity WHERE date = :date')
  Future<List<MemoEntity>> findMemosByDate(DateTime date);

  @Query('SELECT * FROM MemoEntity')
  Future<List<MemoEntity>> findAllMemos();

  @insert
  Future<void> insertMemo(MemoEntity memo);
}
