import '/flutter_flow/flutter_flow_util.dart';
import 'choice_plan_widget.dart' show ChoicePlanWidget;
import 'package:flutter/material.dart';

class ChoicePlanModel extends FlutterFlowModel<ChoicePlanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
