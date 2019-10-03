import 'package:jaguar_orm/jaguar_orm.dart';
import 'package:jaguar_query/jaguar_query.dart';

part 'Testorm.jorm.dart';
class Testorm{
  Testorm();
  Testorm.make(this.id, this.datatest);

  @PrimaryKey(auto: true)
  int id;

  @Column(isNullable: false)
  String datatest;

  String toString() => 'Testorm(id: $id, datatest: $datatest,)';

}

@GenBean()
class TestormBean extends Bean<Testorm> with _TestormBean{
  TestormBean(Adapter adapter) : super(adapter);
  final String tableName = 'testorm';
}