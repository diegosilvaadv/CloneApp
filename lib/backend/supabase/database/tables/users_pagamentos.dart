import '../database.dart';

class UsersPagamentosTable extends SupabaseTable<UsersPagamentosRow> {
  @override
  String get tableName => 'usersPagamentos';

  @override
  UsersPagamentosRow createRow(Map<String, dynamic> data) =>
      UsersPagamentosRow(data);
}

class UsersPagamentosRow extends SupabaseDataRow {
  UsersPagamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersPagamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userIdCobreFacil => getField<String>('user_id_cobreFacil');
  set userIdCobreFacil(String? value) =>
      setField<String>('user_id_cobreFacil', value);

  String? get idCartao => getField<String>('id_cartao');
  set idCartao(String? value) => setField<String>('id_cartao', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get ultimos4dig => getField<String>('ultimos4dig');
  set ultimos4dig(String? value) => setField<String>('ultimos4dig', value);
}
