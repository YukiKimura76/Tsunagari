import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tsunagari_detail_widget.dart' show TsunagariDetailWidget;
import 'package:flutter/material.dart';

class TsunagariDetailModel extends FlutterFlowModel<TsunagariDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in deleteTsunagari widget.
  LocationsRecord? locationDoc;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
