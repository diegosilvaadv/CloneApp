import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Compo Obrigatório';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for emailAddress2 widget.
  FocusNode? emailAddress2FocusNode;
  TextEditingController? emailAddress2Controller;
  String? Function(BuildContext, String?)? emailAddress2ControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2Controller;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2ControllerValidator;
  // State field(s) for confpassword widget.
  FocusNode? confpasswordFocusNode;
  TextEditingController? confpasswordController;
  late bool confpasswordVisibility;
  String? Function(BuildContext, String?)? confpasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    nomeControllerValidator = _nomeControllerValidator;
    password2Visibility = false;
    confpasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    nomeFocusNode?.dispose();
    nomeController?.dispose();

    emailAddress2FocusNode?.dispose();
    emailAddress2Controller?.dispose();

    password2FocusNode?.dispose();
    password2Controller?.dispose();

    confpasswordFocusNode?.dispose();
    confpasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
