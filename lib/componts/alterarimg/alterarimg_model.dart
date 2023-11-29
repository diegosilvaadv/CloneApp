import '/flutter_flow/flutter_flow_util.dart';
import 'alterarimg_widget.dart' show AlterarimgWidget;
import 'package:flutter/material.dart';

class AlterarimgModel extends FlutterFlowModel<AlterarimgWidget> {
  ///  Local state fields for this component.

  String img = 'false';

  int? id;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
