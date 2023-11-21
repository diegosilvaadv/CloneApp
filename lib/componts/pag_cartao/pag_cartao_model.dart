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

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for number_cartao widget.
  FocusNode? numberCartaoFocusNode;
  TextEditingController? numberCartaoController;
  final numberCartaoMask = MaskTextInputFormatter(mask: '#### #### #### #### ');
  String? Function(BuildContext, String?)? numberCartaoControllerValidator;
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
  // State field(s) for cvv_card widget.
  FocusNode? cvvCardFocusNode;
  TextEditingController? cvvCardController;
  final cvvCardMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? cvvCardControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mesCardControllerValidator = _mesCardControllerValidator;
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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
