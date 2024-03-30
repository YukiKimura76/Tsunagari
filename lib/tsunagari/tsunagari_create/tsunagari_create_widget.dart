import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'tsunagari_create_model.dart';
export 'tsunagari_create_model.dart';

class TsunagariCreateWidget extends StatefulWidget {
  const TsunagariCreateWidget({super.key});

  @override
  State<TsunagariCreateWidget> createState() => _TsunagariCreateWidgetState();
}

class _TsunagariCreateWidgetState extends State<TsunagariCreateWidget> {
  late TsunagariCreateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TsunagariCreateModel());

    _model.familyNameController ??= TextEditingController();
    _model.familyNameFocusNode ??= FocusNode();

    _model.familyNameKanaController ??= TextEditingController();
    _model.familyNameKanaFocusNode ??= FocusNode();

    _model.givenNameController ??= TextEditingController();
    _model.givenNameFocusNode ??= FocusNode();

    _model.givenNameKanaController ??= TextEditingController();
    _model.givenNameKanaFocusNode ??= FocusNode();

    _model.nickNameController ??= TextEditingController();
    _model.nickNameFocusNode ??= FocusNode();

    _model.deathAnniversaryYearController ??= TextEditingController();
    _model.deathAnniversaryYearFocusNode ??= FocusNode();

    _model.deathAnniversaryMonthController ??= TextEditingController();
    _model.deathAnniversaryMonthFocusNode ??= FocusNode();

    _model.deathAnniversaryDateController ??= TextEditingController();
    _model.deathAnniversaryDateFocusNode ??= FocusNode();

    _model.birthDateYearController ??= TextEditingController();
    _model.birthDateYearFocusNode ??= FocusNode();

    _model.birthDateMonthController ??= TextEditingController();
    _model.birthDateMonthFocusNode ??= FocusNode();

    _model.birthDateDateController ??= TextEditingController();
    _model.birthDateDateFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 342.0,
                          height: 60.0,
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '供養したい人を追加',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Rounded Mgen plus 2cp',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '姓 *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model.familyNameController,
                                    focusNode: _model.familyNameFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.familyNameController',
                                      const Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      hintText: '鈴木',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 8.0, 16.0, 8.0),
                                      suffixIcon: _model.familyNameController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.familyNameController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 16.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    minLines: null,
                                    validator: _model
                                        .familyNameControllerValidator
                                        .asValidator(context),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '姓(かな) *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model.familyNameKanaController,
                                    focusNode: _model.familyNameKanaFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.familyNameKanaController',
                                      const Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      hintText: 'すずき',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 8.0, 16.0, 8.0),
                                      suffixIcon: _model
                                              .familyNameKanaController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.familyNameKanaController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 16.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    minLines: null,
                                    validator: _model
                                        .familyNameKanaControllerValidator
                                        .asValidator(context),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '名 *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model.givenNameController,
                                    focusNode: _model.givenNameFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.givenNameController',
                                      const Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      hintText: '花子',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 8.0, 16.0, 8.0),
                                      suffixIcon: _model.givenNameController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.givenNameController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 16.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    minLines: null,
                                    validator: _model
                                        .givenNameControllerValidator
                                        .asValidator(context),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '名(かな) *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model.givenNameKanaController,
                                    focusNode: _model.givenNameKanaFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.givenNameKanaController',
                                      const Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      hintText: 'はなこ',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 8.0, 16.0, 8.0),
                                      suffixIcon: _model
                                              .givenNameKanaController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.givenNameKanaController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 16.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    minLines: null,
                                    validator: _model
                                        .givenNameKanaControllerValidator
                                        .asValidator(context),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '関係性 *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.relationsValueController ??=
                                            FormFieldController<String>(null),
                                    options: const [
                                      '祖父',
                                      '祖母',
                                      '父',
                                      '母',
                                      '兄弟',
                                      '姉妹',
                                      '子',
                                      'ペット'
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.relationsValue = val),
                                    width: double.infinity,
                                    height: 48.0,
                                    maxHeight: 416.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintText: '関係性を選択',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 16.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 12.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 8.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '呼び名 *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model.nickNameController,
                                    focusNode: _model.nickNameFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.nickNameController',
                                      const Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      hintText: '例：おじいちゃん、ばぁば',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 8.0, 16.0, 8.0),
                                      suffixIcon: _model.nickNameController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.nickNameController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 16.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    minLines: null,
                                    validator: _model
                                        .nickNameControllerValidator
                                        .asValidator(context),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '父方・母方 *',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Container(
                                        height: 40.0,
                                        decoration: const BoxDecoration(),
                                        child: FlutterFlowChoiceChips(
                                          options: const [
                                            ChipData('父方'),
                                            ChipData('母方')
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.originValue =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Rounded Mgen plus 2cp',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 0.0,
                                            labelPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 5.0, 13.0, 5.0),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(1000.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0x00000000),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Rounded Mgen plus 2cp',
                                                      color: const Color(0xFF37542D),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            iconColor: const Color(0xFF37542D),
                                            iconSize: 0.0,
                                            labelPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 5.0, 13.0, 5.0),
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent3,
                                            borderWidth: 1.0,
                                            borderRadius:
                                                BorderRadius.circular(1000.0),
                                          ),
                                          chipSpacing: 8.0,
                                          rowSpacing: 0.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .originValueController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '命日',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 4.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model.selectedWareki1 = null;
                                              });
                                              setState(() {
                                                _model.dropDownValueController1
                                                    ?.reset();
                                              });
                                            },
                                            text: '西暦',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: _model.selectedWareki1 ==
                                                          null ||
                                                      _model.selectedWareki1 ==
                                                          ''
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent4
                                                  : const Color(0x00000000),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: _model
                                                                .selectedWareki1 ==
                                                            null ||
                                                        _model.selectedWareki1 ==
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .accent4
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(1000.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        ),
                                        Flexible(
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController1 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: const [
                                              '明治',
                                              '大正',
                                              '昭和',
                                              '平成',
                                              '令和'
                                            ],
                                            onChanged: (val) async {
                                              setState(() =>
                                                  _model.dropDownValue1 = val);
                                              setState(() {
                                                _model.selectedWareki1 =
                                                    _model.dropDownValue1;
                                              });
                                            },
                                            width: 81.0,
                                            height: 40.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Rounded Mgen plus 2cp',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            hintText: '和暦',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 18.0,
                                            ),
                                            fillColor: _model.selectedWareki1 !=
                                                        null &&
                                                    _model.selectedWareki1 != ''
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent3,
                                            borderWidth: 1.0,
                                            borderRadius: 1000.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          if (_model.selectedWareki1 != null &&
                                              _model.selectedWareki1 != '')
                                            Text(
                                              valueOrDefault<String>(
                                                _model.selectedWareki1,
                                                '令和',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          Container(
                                            width: 44.0,
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .deathAnniversaryYearController,
                                              focusNode: _model
                                                  .deathAnniversaryYearFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.deathAnniversaryYearController',
                                                const Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: _model.selectedWareki1 !=
                                                            null &&
                                                        _model.selectedWareki1 !=
                                                            ''
                                                    ? '1'
                                                    : '1950',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              minLines: null,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .deathAnniversaryYearControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '年',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Container(
                                            width: 28.0,
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .deathAnniversaryMonthController,
                                              focusNode: _model
                                                  .deathAnniversaryMonthFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.deathAnniversaryMonthController',
                                                const Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: '1',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              textAlign: TextAlign.end,
                                              minLines: null,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .deathAnniversaryMonthControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '月',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Container(
                                            width: 28.0,
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .deathAnniversaryDateController,
                                              focusNode: _model
                                                  .deathAnniversaryDateFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.deathAnniversaryDateController',
                                                const Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: '1',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              textAlign: TextAlign.end,
                                              minLines: null,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .deathAnniversaryDateControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '日',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      height: 22.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        '生年月日',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 4.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                _model.selectedWareki2 = null;
                                              });
                                              setState(() {
                                                _model.dropDownValueController2
                                                    ?.reset();
                                              });
                                            },
                                            text: '西暦',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: _model.selectedWareki2 ==
                                                          null ||
                                                      _model.selectedWareki2 ==
                                                          ''
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent4
                                                  : const Color(0x00000000),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: _model
                                                                .selectedWareki2 ==
                                                            null ||
                                                        _model.selectedWareki2 ==
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .accent4
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(1000.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        ),
                                        Flexible(
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController2 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: const [
                                              '明治',
                                              '大正',
                                              '昭和',
                                              '平成',
                                              '令和'
                                            ],
                                            onChanged: (val) async {
                                              setState(() =>
                                                  _model.dropDownValue2 = val);
                                              setState(() {
                                                _model.selectedWareki2 =
                                                    _model.dropDownValue2;
                                              });
                                            },
                                            width: 81.0,
                                            height: 40.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Rounded Mgen plus 2cp',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            hintText: '和暦',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 18.0,
                                            ),
                                            fillColor: _model.selectedWareki2 !=
                                                        null &&
                                                    _model.selectedWareki2 != ''
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent3,
                                            borderWidth: 1.0,
                                            borderRadius: 1000.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          if (_model.selectedWareki2 != null &&
                                              _model.selectedWareki2 != '')
                                            Text(
                                              valueOrDefault<String>(
                                                _model.selectedWareki2,
                                                '令和',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          SizedBox(
                                            width: 46.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .birthDateYearController,
                                              focusNode:
                                                  _model.birthDateYearFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.birthDateYearController',
                                                const Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: _model.selectedWareki2 !=
                                                            null &&
                                                        _model.selectedWareki2 !=
                                                            ''
                                                    ? '1'
                                                    : '1950',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              minLines: null,
                                              maxLength: _model
                                                              .selectedWareki2 !=
                                                          null &&
                                                      _model.selectedWareki2 !=
                                                          ''
                                                  ? 2
                                                  : 4,
                                              buildCounter: (context,
                                                      {required currentLength,
                                                      required isFocused,
                                                      maxLength}) =>
                                                  null,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .birthDateYearControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '年',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          SizedBox(
                                            width: 22.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .birthDateMonthController,
                                              focusNode: _model
                                                  .birthDateMonthFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.birthDateMonthController',
                                                const Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: '1',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              textAlign: TextAlign.end,
                                              minLines: null,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .birthDateMonthControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '月',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          SizedBox(
                                            width: 22.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .birthDateDateController,
                                              focusNode:
                                                  _model.birthDateDateFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.birthDateDateController',
                                                const Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: '1',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              textAlign: TextAlign.end,
                                              minLines: null,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .birthDateDateControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '日',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              ),
                            ].divide(const SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: !((_model.familyNameController.text !=
                                            '') &&
                                    (_model.familyNameKanaController.text !=
                                            '') &&
                                    (_model.givenNameController.text !=
                                            '') &&
                                    (_model.givenNameKanaController.text !=
                                            '') &&
                                    (_model.relationsValue != null &&
                                        _model.relationsValue != '') &&
                                    (_model.originValue != null &&
                                        _model.originValue != '') &&
                                    (_model.nickNameController.text != ''))
                                ? null
                                : () async {
                                    setState(() {
                                      FFAppState().temporalTsunagariData =
                                          TsunagarisStruct(
                                        name:
                                            '${_model.familyNameController.text} ${_model.givenNameController.text}',
                                        nakeKana:
                                            '${_model.familyNameKanaController.text} ${_model.givenNameKanaController.text}',
                                        nickName:
                                            _model.nickNameController.text,
                                        relation: _model.relationsValue,
                                        deathAnniversary: functions.convertEraToDate(
                                            _model.selectedWareki1,
                                            int.parse(_model
                                                .deathAnniversaryYearController
                                                .text),
                                            int.parse(_model
                                                .deathAnniversaryMonthController
                                                .text),
                                            int.parse(_model
                                                .deathAnniversaryDateController
                                                .text)),
                                        birthDate: (_model
                                                            .birthDateYearController
                                                            .text !=
                                                        '') &&
                                                (_model.birthDateMonthController
                                                            .text !=
                                                        '') &&
                                                (_model.birthDateDateController
                                                            .text !=
                                                        '')
                                            ? functions.convertEraToDate(
                                                _model.selectedWareki2,
                                                int.parse(_model.birthDateYearController.text),
                                                int.parse(_model.birthDateMonthController.text),
                                                int.parse(_model.birthDateDateController.text))
                                            : null,
                                        createdAt: getCurrentTimestamp,
                                        origin: _model.originValue,
                                      );
                                    });

                                    context.pushNamed(
                                      'GraveList',
                                      queryParameters: {
                                        'targetTsunagariName': serializeParam(
                                          FFAppState()
                                              .temporalTsunagariData
                                              .nickName,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                            text: 'お墓をリンク',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Rounded Mgen plus 2cp',
                                    color: const Color(0xFF37542D),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(1000.0),
                              disabledColor: const Color(0x4DADE09B),
                              disabledTextColor: const Color(0x4D37542D),
                            ),
                            showLoadingIndicator: false,
                          ),
                          FFButtonWidget(
                            onPressed: !((_model.familyNameController.text !=
                                            '') &&
                                    (_model.familyNameKanaController.text !=
                                            '') &&
                                    (_model.givenNameController.text !=
                                            '') &&
                                    (_model.givenNameKanaController.text !=
                                            '') &&
                                    (_model.relationsValue != null &&
                                        _model.relationsValue != '') &&
                                    (_model.originValue != null &&
                                        _model.originValue != '') &&
                                    (_model.nickNameController.text != ''))
                                ? null
                                : () async {
                                    setState(() {
                                      FFAppState().temporalTsunagariData =
                                          TsunagarisStruct(
                                        name:
                                            '${_model.familyNameController.text} ${_model.givenNameController.text}',
                                        nakeKana:
                                            '${_model.familyNameKanaController.text} ${_model.givenNameKanaController.text}',
                                        nickName:
                                            _model.nickNameController.text,
                                        relation: _model.relationsValue,
                                        deathAnniversary: (_model.deathAnniversaryYearController.text !=
                                                        '') &&
                                                (_model.deathAnniversaryMonthController
                                                            .text !=
                                                        '') &&
                                                (_model.deathAnniversaryDateController
                                                            .text !=
                                                        '')
                                            ? functions.convertEraToDate(
                                                _model.selectedWareki1,
                                                int.parse(_model.deathAnniversaryYearController.text),
                                                int.parse(_model.deathAnniversaryMonthController.text),
                                                int.parse(_model.deathAnniversaryDateController.text))
                                            : null,
                                        birthDate: (_model
                                                            .birthDateYearController
                                                            .text !=
                                                        '') &&
                                                (_model.birthDateMonthController
                                                            .text !=
                                                        '') &&
                                                (_model.birthDateDateController
                                                            .text !=
                                                        '')
                                            ? functions.convertEraToDate(
                                                _model.selectedWareki2,
                                                int.parse(_model.birthDateYearController.text),
                                                int.parse(_model.birthDateMonthController.text),
                                                int.parse(_model.birthDateDateController.text))
                                            : null,
                                        createdAt: getCurrentTimestamp,
                                        origin: _model.originValue,
                                      );
                                    });

                                    var tsunagarisRecordReference =
                                        TsunagarisRecord.collection.doc();
                                    await tsunagarisRecordReference
                                        .set(createTsunagarisRecordData(
                                      name: FFAppState()
                                          .temporalTsunagariData
                                          .name,
                                      nameKana: FFAppState()
                                          .temporalTsunagariData
                                          .nakeKana,
                                      nickName: FFAppState()
                                          .temporalTsunagariData
                                          .nickName,
                                      relation: FFAppState()
                                          .temporalTsunagariData
                                          .relation,
                                      deathAnniversary: FFAppState()
                                          .temporalTsunagariData
                                          .deathAnniversary,
                                      birthDate: FFAppState()
                                          .temporalTsunagariData
                                          .birthDate,
                                      createdAt: FFAppState()
                                          .temporalTsunagariData
                                          .createdAt,
                                      origin: FFAppState()
                                          .temporalTsunagariData
                                          .origin,
                                      backImage:
                                          FFAppState().defaultTsunagariBGImage,
                                      iconImage:
                                          FFAppState().defaultTsunagariIcon,
                                    ));
                                    _model.targetTsunagari =
                                        TsunagarisRecord.getDocumentFromData(
                                            createTsunagarisRecordData(
                                              name: FFAppState()
                                                  .temporalTsunagariData
                                                  .name,
                                              nameKana: FFAppState()
                                                  .temporalTsunagariData
                                                  .nakeKana,
                                              nickName: FFAppState()
                                                  .temporalTsunagariData
                                                  .nickName,
                                              relation: FFAppState()
                                                  .temporalTsunagariData
                                                  .relation,
                                              deathAnniversary: FFAppState()
                                                  .temporalTsunagariData
                                                  .deathAnniversary,
                                              birthDate: FFAppState()
                                                  .temporalTsunagariData
                                                  .birthDate,
                                              createdAt: FFAppState()
                                                  .temporalTsunagariData
                                                  .createdAt,
                                              origin: FFAppState()
                                                  .temporalTsunagariData
                                                  .origin,
                                              backImage: FFAppState()
                                                  .defaultTsunagariBGImage,
                                              iconImage: FFAppState()
                                                  .defaultTsunagariIcon,
                                            ),
                                            tsunagarisRecordReference);

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'tsunagaris': FieldValue.arrayUnion([
                                            _model.targetTsunagari?.reference
                                          ]),
                                        },
                                      ),
                                    });

                                    context.goNamed(
                                      'TsunagariDetail',
                                      queryParameters: {
                                        'tsunagariDocRef': serializeParam(
                                          _model.targetTsunagari?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );

                                    setState(() {});
                                  },
                            text: 'あとでリンクする',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Rounded Mgen plus 2cp',
                                    color: const Color(0xFF37542D),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                    lineHeight: 1.485,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(1000.0),
                            ),
                            showLoadingIndicator: false,
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    ]
                        .divide(const SizedBox(height: 24.0))
                        .addToStart(const SizedBox(height: 24.0))
                        .addToEnd(const SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
