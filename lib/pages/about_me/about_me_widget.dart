import '/components/menu_widget.dart';
import '/components/portfolio_view1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'about_me_model.dart';
export 'about_me_model.dart';

class AboutMeWidget extends StatefulWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  _AboutMeWidgetState createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<AboutMeWidget> {
  late AboutMeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutMeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.menuModel,
              updateCallback: () => setState(() {}),
              child: MenuWidget(),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 1.0,
                  constraints: BoxConstraints(
                    maxWidth: 1200.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'EDGAR ONDATI',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFF131DB8),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    SizedBox(
                                      width: 800.0,
                                      child: Divider(
                                        height: 2.0,
                                        thickness: 2.0,
                                        indent: 2.0,
                                        endIndent: 2.0,
                                        color: Color(0xA495A1AC),
                                      ),
                                    ),
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Text(
                                          '703-2725 Melfa Rd, Vancouver, V6T1N4',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          child: VerticalDivider(
                                            thickness: 2.0,
                                            indent: 2.0,
                                            endIndent: 2.0,
                                            color: Color(0xA495A1AC),
                                          ),
                                        ),
                                        Text(
                                          '778 889 8646',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          child: VerticalDivider(
                                            thickness: 2.0,
                                            indent: 2.0,
                                            endIndent: 2.0,
                                            color: Color(0xA495A1AC),
                                          ),
                                        ),
                                        Text(
                                          'Edgar.Ondati@gmail.com',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          child: VerticalDivider(
                                            thickness: 2.0,
                                            indent: 2.0,
                                            endIndent: 2.0,
                                            color: Color(0xA495A1AC),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 36.0, 0.0, 8.0),
                            child: Wrap(
                              spacing: 8.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 800.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 12.0),
                                        child: Container(
                                          height: 260.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 16.0, 12.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0, 0.0,
                                                          12.0),
                                                  child: Text(
                                                    'HIGHLIGHTS OF QUALIFICATIONS',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 800.0,
                                                  child: Divider(
                                                    height: 2.0,
                                                    thickness: 2.0,
                                                    indent: 2.0,
                                                    endIndent: 2.0,
                                                    color: Color(0xA495A1AC),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12.0,
                                                                26.0,
                                                                12.0,
                                                                6.0),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      6.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons.album,
                                                                color: Color(
                                                                    0xFF3C48F2),
                                                                size: 11.0,
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            RichText(
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'BACHELORS DEGREE IN COMPUTER SCIENCE ',
                                                                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: 'With experience in multi- disciplinary environments including Web, UX, 3D, Interior, and Product design.',
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                              )
                                                                            ],
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      6.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons.album,
                                                                color: Color(
                                                                    0xFF3C48F2),
                                                                size: 11.0,
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            RichText(
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'PRODUCT MANAGEMENT ',
                                                                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: 'designing, planning, sourcing and managing project execution in different sectors including Construction, Automotive, Events, among others.',
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      6.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons.album,
                                                                color: Color(
                                                                    0xFF3C48F2),
                                                                size: 11.0,
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            RichText(
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'PRODUCT DESIGN ',
                                                                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: 'User Centric Design, understanding client needs and working with local and Global suppliers to deliver the best quality within their budget and requirements.',
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 12.0),
                                        child: Container(
                                          height: 220.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 16.0, 12.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0, 0.0,
                                                          12.0),
                                                  child: Text(
                                                    'SKILLS',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 800.0,
                                                  child: Divider(
                                                    height: 2.0,
                                                    thickness: 2.0,
                                                    indent: 2.0,
                                                    endIndent: 2.0,
                                                    color: Color(0xA495A1AC),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 6.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    CircularPercentIndicator(
                                                                  percent: 0.8,
                                                                  radius: 40.0,
                                                                  lineWidth:
                                                                      18.0,
                                                                  animation:
                                                                      true,
                                                                  progressColor:
                                                                      Color(
                                                                          0xFF3C48F2),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFE0E3E7),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Project\nManagement',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              lineHeight: 0.9,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    CircularPercentIndicator(
                                                                  percent: 0.8,
                                                                  radius: 40.0,
                                                                  lineWidth:
                                                                      18.0,
                                                                  animation:
                                                                      true,
                                                                  progressColor:
                                                                      Color(
                                                                          0xFF3C48F2),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFE0E3E7),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Illustrator',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              lineHeight: 0.9,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    CircularPercentIndicator(
                                                                  percent: 0.6,
                                                                  radius: 40.0,
                                                                  lineWidth:
                                                                      18.0,
                                                                  animation:
                                                                      true,
                                                                  progressColor:
                                                                      Color(
                                                                          0xFF3C48F2),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFE0E3E7),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Sketchup',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              lineHeight: 0.9,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    CircularPercentIndicator(
                                                                  percent: 0.6,
                                                                  radius: 40.0,
                                                                  lineWidth:
                                                                      18.0,
                                                                  animation:
                                                                      true,
                                                                  progressColor:
                                                                      Color(
                                                                          0xFF3C48F2),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFE0E3E7),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Flutter / Dart',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              lineHeight: 0.9,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    CircularPercentIndicator(
                                                                  percent: 0.7,
                                                                  radius: 40.0,
                                                                  lineWidth:
                                                                      18.0,
                                                                  animation:
                                                                      true,
                                                                  progressColor:
                                                                      Color(
                                                                          0xFF3C48F2),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFE0E3E7),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Lumion',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              lineHeight: 0.9,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 12.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 16.0, 12.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0, 0.0,
                                                          12.0),
                                                  child: Text(
                                                    'EDUCATION',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 800.0,
                                                  child: Divider(
                                                    height: 2.0,
                                                    thickness: 2.0,
                                                    indent: 2.0,
                                                    endIndent: 2.0,
                                                    color: Color(0xA495A1AC),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 26.0,
                                                          12.0, 6.0),
                                                  child: ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    RichText(
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'BACHELORS DEGREE ',
                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                'SEPTEMBER 2009 - MAY 2013 ',
                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                'University of Nairobi: BSc. Computer Science',
                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    6.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF3C48F2),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              9.0,
                                                                              4.0,
                                                                              9.0,
                                                                              4.0),
                                                                          child:
                                                                              RichText(
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: 'EXTRA-CURRICULAR COURSEWORK ',
                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                )
                                                                              ],
                                                                              style: FlutterFlowTheme.of(context).bodyText1,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'University of Nairobi/Stanford University Hasso Plattner institute : ',
                                                                                          style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Introduction to Design Thinking',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                fontSize: 12.0,
                                                                                              ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Outfit',
                                                                                            fontSize: 14.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Coursera/ California Institute of Arts : ',
                                                                                          style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Fundamentals of Graphic design',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                fontSize: 12.0,
                                                                                              ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 12.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 16.0, 12.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0, 0.0,
                                                          12.0),
                                                  child: Text(
                                                    'RELEVANT EXPERIENCE',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 800.0,
                                                  child: Divider(
                                                    height: 2.0,
                                                    thickness: 2.0,
                                                    indent: 2.0,
                                                    endIndent: 2.0,
                                                    color: Color(0xA495A1AC),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 26.0,
                                                          12.0, 6.0),
                                                  child: ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    26.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                9.0,
                                                                                4.0,
                                                                                9.0,
                                                                                4.0),
                                                                            child:
                                                                                RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Founder, Product Designer & Manager',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            9.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Spirit Motorcycles',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 13.0,
                                                                              child: VerticalDivider(
                                                                                thickness: 2.0,
                                                                                indent: 0.0,
                                                                                color: Color(0xFF3C48F2),
                                                                              ),
                                                                            ),
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Nairobi, Kenya',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                    child:
                                                                        RichText(
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'JANUARY 2018 -  ',
                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Communicating with Clients to Gather and Understand their Aesthetic and Usability requirements.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Organizing Product Testing and ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Demo events ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'to receive product feedback.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Designing ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Product Mockups ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'to Narrow down the Ideal Customer Specification.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Refine or Redesign',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' product to Customer Specification.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Source',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' Parts, Suppliers, and Subcontractors for each project.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Iterate',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: '  on Products to constantly improve quality and Customer Satisfaction.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return Padding(
                                                                            padding:
                                                                                MediaQuery.of(context).viewInsets,
                                                                            child:
                                                                                PortfolioView1Widget(),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    text:
                                                                        'View Work',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .import_contacts,
                                                                      size:
                                                                          15.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          130.0,
                                                                      height:
                                                                          30.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                          ),
                                                                      elevation:
                                                                          1.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xB08B9BA8),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    26.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                9.0,
                                                                                4.0,
                                                                                9.0,
                                                                                4.0),
                                                                            child:
                                                                                RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Consultant Designer ',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            9.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Contract',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 13.0,
                                                                              child: VerticalDivider(
                                                                                thickness: 2.0,
                                                                                indent: 0.0,
                                                                                color: Color(0xFF3C48F2),
                                                                              ),
                                                                            ),
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Nairobi, Kenya',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            6.0),
                                                                    child:
                                                                        RichText(
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'JULY 2013 -  ',
                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Consulting on ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Design',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' and ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Management ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'of Projects across multiple sectors',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Designing and Producing ',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: 'Websites, Infographics, Architectural Visualizations, Posters, UX, and Merchandise',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Source',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' Components, Suppliers, and Subcontractors for each project.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.album,
                                                                            color:
                                                                                Color(0xFF3C48F2),
                                                                            size:
                                                                                11.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  RichText(
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Iterate',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF3C48F2),
                                                                                                fontSize: 14.0,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: '  on Products to constantly improve quality and Customer Satisfaction.',
                                                                                          style: FlutterFlowTheme.of(context).bodyText2,
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'Button pressed ...');
                                                                    },
                                                                    text:
                                                                        'View Work',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .import_contacts,
                                                                      size:
                                                                          15.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          130.0,
                                                                      height:
                                                                          30.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                          ),
                                                                      elevation:
                                                                          1.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xB08B9BA8),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 12.0),
                                        child: Container(
                                          height: 190.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 16.0, 12.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0, 0.0,
                                                          12.0),
                                                  child: Text(
                                                    'ADDITIONAL EXPERIENCE',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 800.0,
                                                  child: Divider(
                                                    height: 2.0,
                                                    thickness: 2.0,
                                                    indent: 2.0,
                                                    endIndent: 2.0,
                                                    color: Color(0xA495A1AC),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Goals',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Progress',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '4/10',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child:
                                                        LinearPercentIndicator(
                                                      percent: 0.4,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.38,
                                                      lineHeight: 8.0,
                                                      animation: true,
                                                      progressColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      backgroundColor:
                                                          Color(0xFFE0E3E7),
                                                      barRadius:
                                                          Radius.circular(8.0),
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 12.0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.44,
                                          height: 240.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x34090F13),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 8.0, 12.0, 8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Your Week',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    'April 1-7th',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 16.0,
                                                          height: 90.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 16.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 16.0,
                                                          height: 110.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 16.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 16.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 300.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF131DB8),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x34090F13),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 16.0, 24.0, 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Text(
                                                  'PROFILE',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 2.0,
                                            thickness: 2.0,
                                            endIndent: 5.0,
                                            color: Color(0xA495A1AC),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 6.0),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: ' A passionate ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Designer, Maker ',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'and ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Builder ',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      fontSize: 14.0,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'with an interest in pushing the quality of not just digital design, but physical products and spaces as well. ',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      fontSize: 14.0,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 18.0,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 6.0),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        ' I try to use my technical academic background, experience within startups and non governmental organizations, creativity, and my passion for technology to create ',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'unique approaches ',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'to the design we experience. Design, at its best, can Transform lives and Create Joy.',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
