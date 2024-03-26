import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tsunagari_edit_widget.dart' show TsunagariEditWidget;
import 'package:flutter/material.dart';

class TsunagariEditModel extends FlutterFlowModel<TsunagariEditWidget> {
  ///  Local state fields for this page.

  String? selectedWareki1;

  String? selectedWareki2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

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

  // State field(s) for originChoice widget.
  FormFieldController<List<String>>? originChoiceValueController;
  String? get originChoiceValue =>
      originChoiceValueController?.value?.firstOrNull;
  set originChoiceValue(String? val) =>
      originChoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for warekiDropdown widget.
  String? warekiDropdownValue;
  FormFieldController<String>? warekiDropdownValueController;
  // State field(s) for deathAnniversaryYear widget.
  FocusNode? deathAnniversaryYearFocusNode;
  TextEditingController? deathAnniversaryYearController;
  String? Function(BuildContext, String?)?
      deathAnniversaryYearControllerValidator;
  String? _deathAnniversaryYearControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for deathAnniversaryMonth widget.
  FocusNode? deathAnniversaryMonthFocusNode;
  TextEditingController? deathAnniversaryMonthController;
  String? Function(BuildContext, String?)?
      deathAnniversaryMonthControllerValidator;
  String? _deathAnniversaryMonthControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for deathAnniversaryDay widget.
  FocusNode? deathAnniversaryDayFocusNode;
  TextEditingController? deathAnniversaryDayController;
  String? Function(BuildContext, String?)?
      deathAnniversaryDayControllerValidator;
  String? _deathAnniversaryDayControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '必須入力です。';
    }

    return null;
  }

  // State field(s) for warekiDropdown2 widget.
  String? warekiDropdown2Value;
  FormFieldController<String>? warekiDropdown2ValueController;
  // State field(s) for birthDateYear widget.
  FocusNode? birthDateYearFocusNode;
  TextEditingController? birthDateYearController;
  String? Function(BuildContext, String?)? birthDateYearControllerValidator;
  // State field(s) for birthDateMonth widget.
  FocusNode? birthDateMonthFocusNode;
  TextEditingController? birthDateMonthController;
  String? Function(BuildContext, String?)? birthDateMonthControllerValidator;
  // State field(s) for birthDateDay widget.
  FocusNode? birthDateDayFocusNode;
  TextEditingController? birthDateDayController;
  String? Function(BuildContext, String?)? birthDateDayControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    familyNameControllerValidator = _familyNameControllerValidator;
    familyNameKanaControllerValidator = _familyNameKanaControllerValidator;
    givenNameControllerValidator = _givenNameControllerValidator;
    givenNameKanaControllerValidator = _givenNameKanaControllerValidator;
    nickNameControllerValidator = _nickNameControllerValidator;
    deathAnniversaryYearControllerValidator =
        _deathAnniversaryYearControllerValidator;
    deathAnniversaryMonthControllerValidator =
        _deathAnniversaryMonthControllerValidator;
    deathAnniversaryDayControllerValidator =
        _deathAnniversaryDayControllerValidator;
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

    deathAnniversaryDayFocusNode?.dispose();
    deathAnniversaryDayController?.dispose();

    birthDateYearFocusNode?.dispose();
    birthDateYearController?.dispose();

    birthDateMonthFocusNode?.dispose();
    birthDateMonthController?.dispose();

    birthDateDayFocusNode?.dispose();
    birthDateDayController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
