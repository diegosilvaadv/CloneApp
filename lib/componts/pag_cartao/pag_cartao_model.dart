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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    numberCartaoFocusNode?.dispose();
    numberCartaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
