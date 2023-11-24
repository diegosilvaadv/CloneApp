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
        'Authorization': 'Bearer 9610FD2583284F95B9661F0A69CD0389',
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-idempotency-key': 'f7682128-b120-4498-b60a-${randow}',
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
