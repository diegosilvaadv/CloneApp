import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pag_cartao_widget.dart' show PagCartaoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

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

    if (val.length < 11) {
      return 'Requires at least 11 characters.';
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
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

    if (val.length < 16) {
      return 'Requires at least 16 characters.';
    }
    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
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
      return 'Requires at least 2 characters.';
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
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
      return 'Requires at least 2 characters.';
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
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

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
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

    return null;
  }

  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  String? _telefoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 11) {
      return 'Requires at least 11 characters.';
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
    }

    return null;
  }

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
    telefoneControllerValidator = _telefoneControllerValidator;
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

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
