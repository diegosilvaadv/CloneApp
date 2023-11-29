import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get adm => getField<bool>('adm');
  set adm(bool? value) => setField<bool>('adm', value);

  String? get imgPerfil => getField<String>('imgPerfil');
  set imgPerfil(String? value) => setField<String>('imgPerfil', value);

  bool? get produtores => getField<bool>('produtores');
  set produtores(bool? value) => setField<bool>('produtores', value);
}
