import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'grave_location_create_model.dart';
export 'grave_location_create_model.dart';

class GraveLocationCreateWidget extends StatefulWidget {
  const GraveLocationCreateWidget({
    super.key,
    required this.graveRef,
    String? tsunagariName,
  }) : tsunagariName = tsunagariName ?? 'null';

  final DocumentReference? graveRef;
  final String tsunagariName;

  @override
  State<GraveLocationCreateWidget> createState() =>
      _GraveLocationCreateWidgetState();
}

class _GraveLocationCreateWidgetState extends State<GraveLocationCreateWidget> {
  late GraveLocationCreateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraveLocationCreateModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
                              '新しい区画を追加',
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
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<GravesRecord>(
                                stream:
                                    GravesRecord.getDocument(widget.graveRef!),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 18.0,
                                        height: 18.0,
                                        child: SpinKitCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 18.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final containerGravesRecord = snapshot.data!;
                                  return Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 16.0, 20.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            containerGravesRecord.name,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                  lineHeight: 1.485,
                                                ),
                                          ),
                                          Text(
                                            containerGravesRecord.location,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Rounded Mgen plus 2cp',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                  lineHeight: 1.485,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Container(
                                        height: 22.0,
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'お墓の区画番号',
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
                                      controller: _model.textController1,
                                      focusNode: _model.textFieldFocusNode1,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController1',
                                        const Duration(milliseconds: 100),
                                        () => setState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: '例：12、A345',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                        suffixIcon: _model.textController1!.text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.textController1
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      validator: _model.textController1Validator
                                          .asValidator(context),
                                    ),
                                  ].divide(const SizedBox(height: 4.0)),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Container(
                                        height: 22.0,
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'お墓の表記',
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
                                      controller: _model.textController2,
                                      focusNode: _model.textFieldFocusNode2,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController2',
                                        const Duration(milliseconds: 100),
                                        () => setState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: '例：ツナガリ家之墓',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                        suffixIcon: _model.textController2!.text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.textController2
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                    ),
                                  ].divide(const SizedBox(height: 4.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderRadius: 1000.0,
                                buttonSize: 48.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.keyboard_arrow_left,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 28.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ),
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var locationsRecordReference =
                                      LocationsRecord.collection.doc();
                                  await locationsRecordReference
                                      .set(createLocationsRecordData(
                                    name: _model.textController2.text,
                                    createdAt: getCurrentTimestamp,
                                    createdBy: currentUserReference,
                                    locationNumber: _model.textController1.text,
                                  ));
                                  _model.locationDoc =
                                      LocationsRecord.getDocumentFromData(
                                          createLocationsRecordData(
                                            name: _model.textController2.text,
                                            createdAt: getCurrentTimestamp,
                                            createdBy: currentUserReference,
                                            locationNumber:
                                                _model.textController1.text,
                                          ),
                                          locationsRecordReference);

                                  await widget.graveRef!.update({
                                    ...mapToFirestore(
                                      {
                                        'locations_ref': FieldValue.arrayUnion(
                                            [_model.locationDoc?.reference]),
                                      },
                                    ),
                                  });

                                  context.goNamed(
                                    'GraveList',
                                    queryParameters: {
                                      'targetTsunagariName': serializeParam(
                                        widget.tsunagariName,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );

                                  setState(() {});
                                },
                                text: '追加する',
                                options: FFButtonOptions(
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
                                ),
                                showLoadingIndicator: false,
                              ),
                            ),
                          ],
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
      ),
    );
  }
}
