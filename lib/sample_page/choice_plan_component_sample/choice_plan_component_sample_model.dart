import '/flutter_flow/flutter_flow_util.dart';
import 'choice_plan_component_sample_widget.dart'
    show ChoicePlanComponentSampleWidget;
import 'package:flutter/material.dart';

class ChoicePlanComponentSampleModel
    extends FlutterFlowModel<ChoicePlanComponentSampleWidget> {
  ///  Local state fields for this component.

  List<int> selectedMonths = [];
  void addToSelectedMonths(int item) => selectedMonths.add(item);
  void removeFromSelectedMonths(int item) => selectedMonths.remove(item);
  void removeAtIndexFromSelectedMonths(int index) =>
      selectedMonths.removeAt(index);
  void insertAtIndexInSelectedMonths(int index, int item) =>
      selectedMonths.insert(index, item);
  void updateSelectedMonthsAtIndex(int index, Function(int) updateFn) =>
      selectedMonths[index] = updateFn(selectedMonths[index]);

  List<int> selectedOptionMonths = [];
  void addToSelectedOptionMonths(int item) => selectedOptionMonths.add(item);
  void removeFromSelectedOptionMonths(int item) =>
      selectedOptionMonths.remove(item);
  void removeAtIndexFromSelectedOptionMonths(int index) =>
      selectedOptionMonths.removeAt(index);
  void insertAtIndexInSelectedOptionMonths(int index, int item) =>
      selectedOptionMonths.insert(index, item);
  void updateSelectedOptionMonthsAtIndex(int index, Function(int) updateFn) =>
      selectedOptionMonths[index] = updateFn(selectedOptionMonths[index]);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
