import '../database.dart';

class TemplatesTable extends SupabaseTable<TemplatesRow> {
  @override
  String get tableName => 'templates';

  @override
  TemplatesRow createRow(Map<String, dynamic> data) => TemplatesRow(data);
}

class TemplatesRow extends SupabaseDataRow {
  TemplatesRow(super.data);

  @override
  SupabaseTable get table => TemplatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get video => getField<String>('video');
  set video(String? value) => setField<String>('video', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get copypage => getField<String>('copypage');
  set copypage(String? value) => setField<String>('copypage', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get criadoPor => getField<String>('criado por');
  set criadoPor(String? value) => setField<String>('criado por', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  String? get linkTesteProjeto => getField<String>('linkTesteProjeto');
  set linkTesteProjeto(String? value) =>
      setField<String>('linkTesteProjeto', value);
}
