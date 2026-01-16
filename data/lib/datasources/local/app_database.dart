import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

// 1. 새로 만든 TypeConverter를 import 합니다.
import './converter/type_converter.dart';
import './dao/memo_dao.dart';
import './entity/memo_entity.dart';

part 'app_database.g.dart';

// 2. @TypeConverters 어노테이션을 추가하여 데이터베이스에 등록합니다.
@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [MemoEntity])
abstract class AppDatabase extends FloorDatabase {
  MemoDao get memoDao;
}
