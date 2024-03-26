import '/flutter_flow/flutter_flow_util.dart';
import 'grave_list_page_sample_widget.dart' show GraveListPageSampleWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class GraveListPageSampleModel
    extends FlutterFlowModel<GraveListPageSampleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
