import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tsunagari_create_widget.dart' show TsunagariCreateWidget;
import 'package:flutter/material.dart';

class TsunagariCreateModel extends FlutterFlowModel<TsunagariCreateWidget> {
  ///  Local state fields for this page.

  String? selectedWareki1;

  String? selectedWareki2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for familyName widget.
  FocusNode? familyNameFocusNode;
  TextEditingController? familyNameController;
  String? Function(BuildContext, String?)? familyNameControllerValidator;
  String? _familyNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for familyNameKana widget.
  FocusNode? familyNameKanaFocusNode;
  TextEditingController? familyNameKanaController;
  String? Function(BuildContext, String?)? familyNameKanaControllerValidator;
  String? _familyNameKanaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for givenName widget.
  FocusNode? givenNameFocusNode;
  TextEditingController? givenNameController;
  String? Function(BuildContext, String?)? givenNameControllerValidator;
  String? _givenNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for givenNameKana widget.
  FocusNode? givenNameKanaFocusNode;
  TextEditingController? givenNameKanaController;
  String? Function(BuildContext, String?)? givenNameKanaControllerValidator;
  String? _givenNameKanaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for relations widget.
  String? relationsValue;
  FormFieldController<String>? relationsValueController;
  // State field(s) for nickName widget.
  FocusNode? nickNameFocusNode;
  TextEditingController? nickNameController;
  String? Function(BuildContext, String?)? nickNameControllerValidator;
  String? _nickNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for origin widget.
  FormFieldController<List<String>>? originValueController;
  String? get originValue => originValueController?.value?.firstOrNull;
  set originValue(String? val) =>
      originValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for deathAnniversaryYear widget.
  FocusNode? deathAnniversaryYearFocusNode;
  TextEditingController? deathAnniversaryYearController;
  String? Function(BuildContext, String?)?
      deathAnniversaryYearControllerValidator;
  // State field(s) for deathAnniversaryMonth widget.
  FocusNode? deathAnniversaryMonthFocusNode;
  TextEditingController? deathAnniversaryMonthController;
  String? Function(BuildContext, String?)?
      deathAnniversaryMonthControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for birthDateYear widget.
  FocusNode? birthDateYearFocusNode;
  TextEditingController? birthDateYearController;
  String? Function(BuildContext, String?)? birthDateYearControllerValidator;
  // State field(s) for birthDateMonth widget.
  FocusNode? birthDateMonthFocusNode;
  TextEditingController? birthDateMonthController;
  String? Function(BuildContext, String?)? birthDateMonthControllerValidator;
  // State field(s) for birthDateDate widget.
  FocusNode? birthDateDateFocusNode;
  TextEditingController? birthDateDateController;
  String? Function(BuildContext, String?)? birthDateDateControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    familyNameControllerValidator = _familyNameControllerValidator;
    familyNameKanaControllerValidator = _familyNameKanaControllerValidator;
    givenNameControllerValidator = _givenNameControllerValidator;
    givenNameKanaControllerValidator = _givenNameKanaControllerValidator;
    nickNameControllerValidator = _nickNameControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    familyNameFocusNode?.dispose();
    familyNameController?.dispose();

    familyNameKanaFocusNode?.dispose();
    familyNameKanaController?.dispose();

    givenNameFocusNode?.dispose();
    givenNameController?.dispose();

    givenNameKanaFocusNode?.dispose();
    givenNameKanaController?.dispose();

    nickNameFocusNode?.dispose();
    nickNameController?.dispose();

    deathAnniversaryYearFocusNode?.dispose();
    deathAnniversaryYearController?.dispose();

    deathAnniversaryMonthFocusNode?.dispose();
    deathAnniversaryMonthController?.dispose();

    textFieldFocusNode?.dispose();
    textController8?.dispose();

    birthDateYearFocusNode?.dispose();
    birthDateYearController?.dispose();

    birthDateMonthFocusNode?.dispose();
    birthDateMonthController?.dispose();

    birthDateDateFocusNode?.dispose();
    birthDateDateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
