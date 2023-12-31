import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PixMercadoPagoCall {
  static Future<ApiCallResponse> call({
    double? amount,
    String? productTitle = '',
    String? email = '',
    String? firstName = '',
    String? lastName = '',
    String? identificationType = '',
    String? numberCpf = '',
    String? chave = '',
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": ${amount},
  "payment_method_id": "pix",
  "payer": {
    "email": "${email}",
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${numberCpf}"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pix Mercado Pago',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer APP_USR-2540313967326267-111909-94d7cfcc16413329acb45f48567519c7-433297459',
        'X-Idempotency-Key': '0d5020ed-1af6-469c-ae06-${chave}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic idPedido(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic chavePix(dynamic response) => getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      );
  static dynamic qRcode(dynamic response) => getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code_base64''',
      );
}

class StatusPixCall {
  static Future<ApiCallResponse> call({
    int? idPix,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Pix',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${idPix}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer APP_USR-2540313967326267-111909-94d7cfcc16413329acb45f48567519c7-433297459',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class CriarPagCartaoAPIPagBankCall {
  static Future<ApiCallResponse> call({
    String? nomeCliente = '',
    String? emailCliente = '',
    String? cpf = '',
    String? dd = '',
    String? numeroCelular = '',
    String? refId = '',
    String? refItem = '',
    String? nomeProduto = '',
    int? valorProduto,
    String? securityCode = '',
    String? nomeImpreCard = '',
    int? expMonth,
    int? expYear,
    String? numberCard = '',
    String? randow = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": {
    "name": "${nomeCliente}",
    "email": "${emailCliente}",
    "tax_id": "${cpf}",
    "phones": [
      {
        "country": "55",
        "area": "${dd}",
        "number": "${numeroCelular}",
        "type": "MOBILE"
      }
    ]
  },
  "shipping": {
    "address": {
      "street": "Avenida Brigadeiro Faria Lima",
      "number": "1384",
      "complement": "apto 12",
      "locality": "Pinheiros",
      "city": "São Paulo",
      "region_code": "SP",
      "country": "BRA",
      "postal_code": "01452002"
    }
  },
  "reference_id": "${refId}",
  "items": [
    {
      "reference_id": "${refItem}",
      "name": "${nomeProduto}",
      "quantity": 1,
      "unit_amount": ${valorProduto}
    }
  ],
  "charges": [
    {
      "reference_id": "${nomeProduto}",
      "description": "itens",
      "amount": {
        "value": ${valorProduto},
        "currency": "BRL"
      },
      "payment_method": {
        "type": "CREDIT_CARD",
        "installments": 1,
        "capture": true,
        "soft_descriptor": "CopyApp",
        "card": {
          "security_code": "${securityCode}",
          "holder": {
            "name": "${nomeImpreCard}"
          },
          "store": true,
          "exp_month": ${expMonth},
          "exp_year": ${expYear},
          "number": "${numberCard}"
        }
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Pag Cartao API PagBank',
      apiUrl: 'https://sandbox.api.pagseguro.com/orders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-idempotency-key': '${randow}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic erroMeng(dynamic response) => getJsonField(
        response,
        r'''$.error_messages[:].description''',
      );
  static dynamic sucesso(dynamic response) => getJsonField(
        response,
        r'''$.charges[:].payment_response.message''',
      );
}

class CriarPagPIXAPIPagBankCall {
  static Future<ApiCallResponse> call({
    String? nomeCliente = '',
    String? emailCliente = '',
    String? cpf = '',
    String? dd = '',
    String? numeroCelular = '',
    String? refId = '',
    String? refItem = '',
    String? nomeProduto = '',
    int? valorProduto,
    String? securityCode = '',
    String? nomeImpreCard = '',
    int? expMonth,
    int? expYear,
    String? numberCard = '',
    String? randow = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": {
    "name": "Diego Silva",
    "email": "diegosilva.adv@hotmail.com",
    "tax_id": "86071121558",
    "phones": [
      {
        "country": "55",
        "area": "11",
        "number": "967926049",
        "type": "MOBILE"
      }
    ]
  },
  "shipping": {
    "address": {
      "street": "Avenida Brigadeiro Faria Lima",
      "number": "1384",
      "complement": "apto 12",
      "locality": "Pinheiros",
      "city": "São Paulo",
      "region_code": "SP",
      "country": "BRA",
      "postal_code": "01452002"
    }
  },
  "reference_id": "ex-00009",
  "items": [
    {
      "name": "nome do item",
      "quantity": 1,
      "unit_amount": 1
    }
  ],
  "qr_codes": [
    {
      "amount": {
        "value": 1
      },
      "expiration_date": "2023-11-28T20:15:59-03:00"
    }
  ],
  "notification_urls": [
    "https://meusite.com/notificacoes"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Pag PIX API PagBank',
      apiUrl: 'https://sandbox.api.pagseguro.com/orders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 9610FD2583284F95B9661F0A69CD0389',
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-idempotency-key': '0d5020ed-1af6-469c-ae06-${randow}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AuthenticateCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? secret = '',
    String? appId = '',
  }) async {
    final ffApiRequestBody = '''
{
    "app_id": "6565e1414cfb9",
    "secret": "9011ce6bfba714d91df6a0365d167a7a6848f1b7"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authenticate CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/authenticate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic erro(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
}

class CriarClienteCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? cpf = '',
    String? nomeCliente = '',
    String? telefone = '',
    String? celular = '',
    String? email = '',
    String? cep = '',
    String? nomeRua = '',
    String? numeroRua = '',
    String? complemento = '',
    String? bairro = '',
    String? cidade = '',
    String? estado = '',
  }) async {
    final ffApiRequestBody = '''
{
  "person_type": 1,
  "taxpayer_id": "${cpf}",
  "personal_name": "${nomeCliente}",
  "telephone": "${telefone}",
  "cellular": "${celular}",
  "email": "${email}",
  "email_cc": "diegosilva.adv@yahoo.com",
  "address": {
    "description": "Endereço principal",
    "zipcode": "${cep}",
    "street": "${nomeRua}",
    "number": "${numeroRua}",
    "complement": "${complemento}",
    "neighborhood": "${bairro}",
    "city": "${cidade}",
    "state": "${estado}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cliente CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/customers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic clientecadastrado(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic erroCriarCliente(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CriarCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userId = '',
    String? nomeCliente = '',
    String? numeroCard = '',
    String? mes = '',
    String? ano = '',
    String? codSecurity = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_id": "${userId}",
  "default": 1,
  "name": "${nomeCliente}",
  "number": "${numeroCard}",
  "expiration_month": "${mes}",
  "expiration_year": "${ano}",
  "security_code": "${codSecurity}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cartao CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/cards',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic customerID(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic userID(dynamic response) => getJsonField(
        response,
        r'''$.data.customer_id''',
      );
  static dynamic ultimos4dig(dynamic response) => getJsonField(
        response,
        r'''$.data.last4_digits''',
      );
  static dynamic nomeUser(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
  static dynamic erroCriarCartao(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class ConsultarClienteCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultar Cliente CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/customers/${userID}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
}

class AtualizarClienteCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userID = '',
    String? personalName = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "personal_name": "${personalName}",
  "email": "${email}",
  "address": {
    "description": "Endereço Principal"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizar Cliente CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/customers/${userID}',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
}

class CapturarCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
    int? valor,
  }) async {
    final ffApiRequestBody = '''
{
    "amount": ${valor}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Capturar Cobranca via Cartao CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices/${iDCobranca}/capture',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic cobrancaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
  static dynamic erroNaCaptura(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class AutorizarCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userID = '',
    String? creditCardId = '',
    String? nomeProduto = '',
    double? quanty,
    int? preco,
    String? sessionId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "payable_with": "credit",
  "customer_id": "${userID}",
  "credit_card_id": "${creditCardId}",
  "capture": 1,
  "session_id": "${sessionId}",
  "request_ip": "168.190.36.98",
  "installment": {
    "number": 1,
    "mode": "interest_free"
  },
  "items": [
    {
      "description": "${nomeProduto}",
      "quantity": ${quanty},
      "price": ${preco}
    }
  ],
  "settings": {
    "send_tax_invoice": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Autorizar Cobranca via Cartao CobreFacil ',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic cobrancaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
  static dynamic erroCobraca(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic ultimos4dig(dynamic response) => getJsonField(
        response,
        r'''$.data.credit_card.last4_digits''',
      );
}

class EstornarCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
    int? valorEstorno,
  }) async {
    final ffApiRequestBody = '''
{
    "amount": ${valorEstorno}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Estornar Cobranca via Cartao CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices/${iDCobranca}/refund',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic cobrancaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
}

class DetalhesCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'detalhes Cobranca via Cartao CobreFacil ',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices/${iDCobranca}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic faturaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
}

class DeleterCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleter  Cobranca via Cartao CobreFacil ',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices/${iDCobranca}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic faturaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
}

class BuscarcepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BUSCARCEP',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$.logradouro''',
      );
  static dynamic cep(dynamic response) => getJsonField(
        response,
        r'''$.cep''',
      );
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
      );
}

class DeletarClienteCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? iDCliente = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Deletar Cliente CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/customers/${iDCliente}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListaCobrancasCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista Cobrancas CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletarCartoesCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? cardID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Deletar Cartoes CobreFacil ',
      apiUrl: 'https://api.cobrefacil.com.br/v1/cards/${cardID}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListaCartoesCobreFacilCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista Cartoes CobreFacil  Copy',
      apiUrl:
          'https://api.cobrefacil.com.br/v1/cards?customer_id=8J53ROD2J5ND62PQ47WG',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
