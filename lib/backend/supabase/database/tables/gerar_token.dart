import '../database.dart';

class GerarTokenTable extends SupabaseTable<GerarTokenRow> {
  @override
  String get tableName => 'gerarToken';

  @override
  GerarTokenRow createRow(Map<String, dynamic> data) => GerarTokenRow(data);
}

class GerarTokenRow extends SupabaseDataRow {
  GerarTokenRow(super.data);

  @override
  SupabaseTable get table => GerarTokenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get appId => getField<String>('APP_ID');
  set appId(String? value) => setField<String>('APP_ID', value);

  String? get appSecret => getField<String>('APP_SECRET');
  set appSecret(String? value) => setField<String>('APP_SECRET', value);
}
