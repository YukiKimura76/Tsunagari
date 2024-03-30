import '/flutter_flow/flutter_flow_util.dart';
import 'tsunagari_list_widget.dart' show TsunagariListWidget;
import 'package:flutter/material.dart';

class TsunagariListModel extends FlutterFlowModel<TsunagariListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
