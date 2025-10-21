import '/flutter_flow/flutter_flow_util.dart';
import 'senha_widget.dart' show SenhaWidget;
import 'package:flutter/material.dart';

class SenhaModel extends FlutterFlowModel<SenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
