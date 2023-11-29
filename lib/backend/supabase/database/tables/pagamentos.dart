import '../database.dart';

class PagamentosTable extends SupabaseTable<PagamentosRow> {
  @override
  String get tableName => 'pagamentos';

  @override
  PagamentosRow createRow(Map<String, dynamic> data) => PagamentosRow(data);
}

class PagamentosRow extends SupabaseDataRow {
  PagamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PagamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get produto => getField<String>('produto');
  set produto(String? value) => setField<String>('produto', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get comprado => getField<String>('comprado');
  set comprado(String? value) => setField<String>('comprado', value);

  String? get cartaoFinal => getField<String>('cartao _final');
  set cartaoFinal(String? value) => setField<String>('cartao _final', value);

  String? get transacionID => getField<String>('transacionID');
  set transacionID(String? value) => setField<String>('transacionID', value);
}
