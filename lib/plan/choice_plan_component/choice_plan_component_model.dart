import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'choice_plan_component_widget.dart' show ChoicePlanComponentWidget;
import 'package:flutter/material.dart';

class ChoicePlanComponentModel
    extends FlutterFlowModel<ChoicePlanComponentWidget> {
  ///  Local state fields for this component.

  List<DateTime> selectedMonths = [];
  void addToSelectedMonths(DateTime item) => selectedMonths.add(item);
  void removeFromSelectedMonths(DateTime item) => selectedMonths.remove(item);
  void removeAtIndexFromSelectedMonths(int index) =>
      selectedMonths.removeAt(index);
  void insertAtIndexInSelectedMonths(int index, DateTime item) =>
      selectedMonths.insert(index, item);
  void updateSelectedMonthsAtIndex(int index, Function(DateTime) updateFn) =>
      selectedMonths[index] = updateFn(selectedMonths[index]);

  List<DateTime> selectedOptionMonths = [];
  void addToSelectedOptionMonths(DateTime item) =>
      selectedOptionMonths.add(item);
  void removeFromSelectedOptionMonths(DateTime item) =>
      selectedOptionMonths.remove(item);
  void removeAtIndexFromSelectedOptionMonths(int index) =>
      selectedOptionMonths.removeAt(index);
  void insertAtIndexInSelectedOptionMonths(int index, DateTime item) =>
      selectedOptionMonths.insert(index, item);
  void updateSelectedOptionMonthsAtIndex(
          int index, Function(DateTime) updateFn) =>
      selectedOptionMonths[index] = updateFn(selectedOptionMonths[index]);

  List<DocumentReference> purchaseDatas = [];
  void addToPurchaseDatas(DocumentReference item) => purchaseDatas.add(item);
  void removeFromPurchaseDatas(DocumentReference item) =>
      purchaseDatas.remove(item);
  void removeAtIndexFromPurchaseDatas(int index) =>
      purchaseDatas.removeAt(index);
  void insertAtIndexInPurchaseDatas(int index, DocumentReference item) =>
      purchaseDatas.insert(index, item);
  void updatePurchaseDatasAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      purchaseDatas[index] = updateFn(purchaseDatas[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TsunagarisRecord? targetTsunagari;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  LocationsRecord? locationDoc;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PurchasesRecord? purchaseData;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
