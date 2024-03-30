import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'grave_list_model.dart';
export 'grave_list_model.dart';

class GraveListWidget extends StatefulWidget {
  const GraveListWidget({
    super.key,
    required this.targetTsunagariName,
  });

  final String? targetTsunagariName;

  @override
  State<GraveListWidget> createState() => _GraveListWidgetState();
}

class _GraveListWidgetState extends State<GraveListWidget> {
  late GraveListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraveListModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
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
                              'お墓をリンク',
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
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AuthUserStreamWidget(
                                  builder: (context) => Builder(
                                    builder: (context) {
                                      final gravesRef = (currentUserDocument
                                                  ?.graves
                                                  .toList() ??
                                              [])
                                          .toList();
                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: gravesRef.length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(height: 12.0),
                                        itemBuilder: (context, gravesRefIndex) {
                                          final gravesRefItem =
                                              gravesRef[gravesRefIndex];
                                          return StreamBuilder<GravesRecord>(
                                            stream: GravesRecord.getDocument(
                                                gravesRefItem),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 18.0,
                                                    height: 18.0,
                                                    child: SpinKitCircle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 18.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final containerGravesRecord =
                                                  snapshot.data!;
                                              return Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 16.0,
                                                          20.0, 16.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    color: Colors.white,
                                                    child: ExpandableNotifier(
                                                      initialExpanded: false,
                                                      child: ExpandablePanel(
                                                        header: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              containerGravesRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Rounded Mgen plus 2cp',
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.485,
                                                                  ),
                                                            ),
                                                            Text(
                                                              containerGravesRecord
                                                                  .location,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Rounded Mgen plus 2cp',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.485,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                        collapsed: Builder(
                                                          builder: (context) {
                                                            final tsunagariLocation =
                                                                containerGravesRecord
                                                                    .tsunagariLocationRelations
                                                                    .toList();
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: List.generate(
                                                                      tsunagariLocation
                                                                          .length,
                                                                      (tsunagariLocationIndex) {
                                                                final tsunagariLocationItem =
                                                                    tsunagariLocation[
                                                                        tsunagariLocationIndex];
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          FFIcons
                                                                              .k16Flower1,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            tsunagariLocationItem.tsunagari,
                                                                            'null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Rounded Mgen plus 2cp',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        tsunagariLocationItem
                                                                            .location,
                                                                        'null',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Rounded Mgen plus 2cp',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                );
                                                              })
                                                                  .divide(const SizedBox(
                                                                      height:
                                                                          8.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          height:
                                                                              8.0)),
                                                            );
                                                          },
                                                        ),
                                                        expanded: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final locationRef =
                                                                        containerGravesRecord
                                                                            .locationsRef
                                                                            .toList();
                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          locationRef
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          const SizedBox(
                                                                              height: 8.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              locationRefIndex) {
                                                                        final locationRefItem =
                                                                            locationRef[locationRefIndex];
                                                                        return Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color: _model.selectedLocation == locationRefItem
                                                                                ? FlutterFlowTheme.of(context).secondary
                                                                                : FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                12.0,
                                                                                16.0,
                                                                                12.0),
                                                                            child:
                                                                                StreamBuilder<LocationsRecord>(
                                                                              stream: LocationsRecord.getDocument(locationRefItem),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 18.0,
                                                                                      height: 18.0,
                                                                                      child: SpinKitCircle(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final columnLocationsRecord = snapshot.data!;
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Text(
                                                                                            columnLocationsRecord.name,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Rounded Mgen plus 2cp',
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: false,
                                                                                                  lineHeight: 1.485,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Builder(
                                                                                          builder: (context) {
                                                                                            final tsunagari = columnLocationsRecord.tsunagaris.toList();
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: List.generate(tsunagari.length, (tsunagariIndex) {
                                                                                                final tsunagariItem = tsunagari[tsunagariIndex];
                                                                                                return StreamBuilder<TsunagarisRecord>(
                                                                                                  stream: TsunagarisRecord.getDocument(tsunagariItem),
                                                                                                  builder: (context, snapshot) {
                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                    if (!snapshot.hasData) {
                                                                                                      return Center(
                                                                                                        child: SizedBox(
                                                                                                          width: 18.0,
                                                                                                          height: 18.0,
                                                                                                          child: SpinKitCircle(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    final rowTsunagarisRecord = snapshot.data!;
                                                                                                    return Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Icon(
                                                                                                          FFIcons.k16Flower2,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          size: 16.0,
                                                                                                        ),
                                                                                                        Text(
                                                                                                          rowTsunagarisRecord.nickName,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Rounded Mgen plus 2cp',
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 1.0,
                                                                                                                useGoogleFonts: false,
                                                                                                                lineHeight: 1.485,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ].divide(const SizedBox(width: 8.0)),
                                                                                                    );
                                                                                                  },
                                                                                                );
                                                                                              }).divide(const SizedBox(height: 4.0)),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ].divide(const SizedBox(height: 4.0)),
                                                                                    ),
                                                                                    if (_model.selectedLocation != locationRefItem)
                                                                                      FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          setState(() {
                                                                                            _model.selectedLocation = locationRefItem;
                                                                                            _model.selectedGrave = gravesRefItem;
                                                                                          });
                                                                                        },
                                                                                        text: '追加する',
                                                                                        options: FFButtonOptions(
                                                                                          width: double.infinity,
                                                                                          height: 40.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
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
                                                                                  ].divide(const SizedBox(height: 12.0)),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'GraveLocationCreate',
                                                                      queryParameters:
                                                                          {
                                                                        'graveRef':
                                                                            serializeParam(
                                                                          containerGravesRecord
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'tsunagariName':
                                                                            serializeParam(
                                                                          widget
                                                                              .targetTsunagariName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  text: '追加する',
                                                                  icon: const Icon(
                                                                    Icons.add,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Rounded Mgen plus 2cp',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          0.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            1000.0),
                                                                  ),
                                                                  showLoadingIndicator:
                                                                      false,
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      height:
                                                                          16.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          height:
                                                                              16.0))
                                                                  .addToEnd(const SizedBox(
                                                                      height:
                                                                          16.0)),
                                                            ),
                                                          ],
                                                        ),
                                                        theme:
                                                            ExpandableThemeData(
                                                          tapHeaderToExpand:
                                                              true,
                                                          tapBodyToExpand: true,
                                                          tapBodyToCollapse:
                                                              true,
                                                          headerAlignment:
                                                              ExpandablePanelHeaderAlignment
                                                                  .top,
                                                          hasIcon: true,
                                                          expandIcon: Icons
                                                              .keyboard_arrow_down,
                                                          collapseIcon: Icons
                                                              .keyboard_arrow_up,
                                                          iconSize: 16.0,
                                                          iconColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'GraveCreate',
                                      queryParameters: {
                                        'tsunagariName': serializeParam(
                                          widget.targetTsunagariName,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  text: '追加する',
                                  icon: Icon(
                                    Icons.add,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
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
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
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
                                  context.pop();
                                },
                              ),
                            ),
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: (_model.selectedLocation == null)
                                    ? null
                                    : () async {
                                        context.goNamed(
                                          'ChoicePlan',
                                          queryParameters: {
                                            'graveRef': serializeParam(
                                              _model.selectedGrave,
                                              ParamType.DocumentReference,
                                            ),
                                            'locationRef': serializeParam(
                                              _model.selectedLocation,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                text: '供養プランを選択',
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
                                  disabledColor: const Color(0x4DADE09B),
                                  disabledTextColor: const Color(0x4D37542D),
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
