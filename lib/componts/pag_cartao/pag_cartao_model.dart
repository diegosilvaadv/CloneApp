import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'pag_cartao_widget.dart' show PagCartaoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PagCartaoModel extends FlutterFlowModel<PagCartaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  String? _cpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 14) {
      return 'Mínimo de 14 Caracteres';
    }

    return null;
  }

  // State field(s) for number_cartao widget.
  FocusNode? numberCartaoFocusNode;
  TextEditingController? numberCartaoController;
  final numberCartaoMask = MaskTextInputFormatter(mask: '#### #### #### #### ');
  String? Function(BuildContext, String?)? numberCartaoControllerValidator;
  String? _numberCartaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 18) {
      return 'Mínimo de 18 Caracteres';
    }

    return null;
  }

  // State field(s) for mes_card widget.
  FocusNode? mesCardFocusNode;
  TextEditingController? mesCardController;
  final mesCardMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? mesCardControllerValidator;
  String? _mesCardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 2) {
      return 'Mínimo de 2 Caracteres';
    }

    return null;
  }

  // State field(s) for ano_card widget.
  FocusNode? anoCardFocusNode;
  TextEditingController? anoCardController;
  final anoCardMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? anoCardControllerValidator;
  String? _anoCardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 2) {
      return 'Mínimo de 2 Caracteres';
    }

    return null;
  }

  // State field(s) for cvv_card widget.
  FocusNode? cvvCardFocusNode;
  TextEditingController? cvvCardController;
  final cvvCardMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? cvvCardControllerValidator;
  String? _cvvCardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 3) {
      return 'Mínimo de 3 Caracteres';
    }

    return null;
  }

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  String? _cepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 8) {
      return 'Mínimo de 8 Caracteres';
    }

    return null;
  }

  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  String? _numeroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length > 10) {
      return 'Máximo de 14 Caracteres';
    }

    return null;
  }

  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularController;
  final celularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? celularControllerValidator;
  String? _celularControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 15) {
      return 'Requires at least 15 characters.';
    }
    if (val.length > 15) {
      return 'Maximum 15 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (TokemCard)] action in Button widget.
  ApiCallResponse? validacaoCard;
  // Stores action output result for [Backend Call - API (Cartao MP)] action in Button widget.
  ApiCallResponse? realizarPagamento;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    cpfControllerValidator = _cpfControllerValidator;
    numberCartaoControllerValidator = _numberCartaoControllerValidator;
    mesCardControllerValidator = _mesCardControllerValidator;
    anoCardControllerValidator = _anoCardControllerValidator;
    cvvCardControllerValidator = _cvvCardControllerValidator;
    cepControllerValidator = _cepControllerValidator;
    numeroControllerValidator = _numeroControllerValidator;
    celularControllerValidator = _celularControllerValidator;
  }

  void dispose() {
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    numberCartaoFocusNode?.dispose();
    numberCartaoController?.dispose();

    mesCardFocusNode?.dispose();
    mesCardController?.dispose();

    anoCardFocusNode?.dispose();
    anoCardController?.dispose();

    cvvCardFocusNode?.dispose();
    cvvCardController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    celularFocusNode?.dispose();
    celularController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
