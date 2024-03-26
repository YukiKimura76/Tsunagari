import '/flutter_flow/flutter_flow_util.dart';
import 'grave_list_widget.dart' show GraveListWidget;
import 'package:flutter/material.dart';

class GraveListModel extends FlutterFlowModel<GraveListWidget> {
  ///  Local state fields for this page.

  DocumentReference? selectedLocation;

  DocumentReference? selectedGrave;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
