import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/componts/criarconta/criarconta_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'detalhe_page_model.dart';
export 'detalhe_page_model.dart';

class DetalhePageWidget extends StatefulWidget {
  const DetalhePageWidget({
    super.key,
    required this.detlahes,
  });

  final TemplatesRow? detlahes;

  @override
  _DetalhePageWidgetState createState() => _DetalhePageWidgetState();
}

class _DetalhePageWidgetState extends State<DetalhePageWidget>
    with TickerProviderStateMixin {
  late DetalhePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(-40.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'detalhePage'});
    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.detlahes?.copypage,
      'copy',
    ));
    _model.textFieldFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/ff_logo_small_(1).png',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Copy Page | FlutterFlow',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Rubik',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DETALHE_PAGE_PAGE_HOME_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'HomePage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              text: 'HOME',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor: const Color(0x00F1F4F8),
                                hoverBorderSide: const BorderSide(
                                  color: Color(0x00F1F4F8),
                                  width: 0.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                              showLoadingIndicator: false,
                            ).animateOnActionTrigger(
                              animationsMap['buttonOnActionTriggerAnimation1']!,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DETALHE_PAGE_PAGE_TUTORIAL_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'Tutorial',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              text: 'TUTORIAL',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor: const Color(0x00F1F4F8),
                                hoverBorderSide: const BorderSide(
                                  color: Color(0x00F1F4F8),
                                  width: 0.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                              showLoadingIndicator: false,
                            ).animateOnActionTrigger(
                              animationsMap['buttonOnActionTriggerAnimation2']!,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DETALHE_PAGE_PAGE_CONTATO_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'contato',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              text: 'CONTATO',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor: const Color(0x00F1F4F8),
                                hoverBorderSide: const BorderSide(
                                  color: Color(0x00F1F4F8),
                                  width: 0.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                              showLoadingIndicator: false,
                            ).animateOnActionTrigger(
                              animationsMap['buttonOnActionTriggerAnimation3']!,
                            ),
                          ),
                          if (currentUserEmailVerified)
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DETALHE_PAGE_PAGE_PERFIL_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'perfil',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              text: 'PERFIL',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0x7C5765F2),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor: const Color(0x00F1F4F8),
                                hoverBorderSide: const BorderSide(
                                  color: Color(0x00F1F4F8),
                                  width: 0.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                              showLoadingIndicator: false,
                            ).animateOnActionTrigger(
                              animationsMap['buttonOnActionTriggerAnimation4']!,
                            ),
                          if (currentUserEmailVerified == false)
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DETALHE_PAGE_PAGE_CRIAR_CONTA_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'login',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              text: 'CRIAR CONTA',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0x575765F2),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor: const Color(0x00F1F4F8),
                                hoverBorderSide: const BorderSide(
                                  color: Color(0x00F1F4F8),
                                  width: 0.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                              showLoadingIndicator: false,
                            ).animateOnActionTrigger(
                              animationsMap['buttonOnActionTriggerAnimation5']!,
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'DETALHE_PAGE_PAGE_lightDark_small_ON_TAP');
                                if ((Theme.of(context).brightness ==
                                        Brightness.light) ==
                                    true) {
                                  logFirebaseEvent(
                                      'lightDark_small_set_dark_mode_settings');
                                  setDarkModeSetting(context, ThemeMode.dark);
                                  logFirebaseEvent(
                                      'lightDark_small_widget_animation');
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation'] !=
                                      null) {
                                    animationsMap[
                                            'containerOnActionTriggerAnimation']!
                                        .controller
                                        .forward(from: 0.0);
                                  }
                                } else {
                                  logFirebaseEvent(
                                      'lightDark_small_set_dark_mode_settings');
                                  setDarkModeSetting(context, ThemeMode.light);
                                  logFirebaseEvent(
                                      'lightDark_small_widget_animation');
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation'] !=
                                      null) {
                                    animationsMap[
                                            'containerOnActionTriggerAnimation']!
                                        .controller
                                        .reverse();
                                  }
                                }
                              },
                              child: Container(
                                width: 80.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      2.0, 2.0, 2.0, 2.0),
                                  child: Stack(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.90, 0.00),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.wb_sunny_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 6.0, 0.0),
                                          child: Icon(
                                            Icons.mode_night_rounded,
                                            color: Color(0xFF57636C),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.00, 0.00),
                                        child: Container(
                                          width: 36.0,
                                          height: 36.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x430B0D0F),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'containerOnActionTriggerAnimation']!,
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
                  ),
              ],
            ),
          ),
          actions: const [],
          centerTitle: false,
          toolbarHeight: 80.0,
          elevation: 10.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(100.0, 50.0, 100.0, 50.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          valueOrDefault<String>(
                            widget.detlahes?.titulo,
                            'titulo',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Rubik',
                                    fontSize: 30.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 50.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            valueOrDefault<String>(
                              widget.detlahes?.descricao,
                              'descricao',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 50.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.tag,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.detlahes?.categoria,
                              'tag',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 50.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person_2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.detlahes?.criadoPor,
                              'nome',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Noto Serif',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 1200.0,
                          height: 900.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'DETALHE_PAGE_PAGE_Image_tzskgcws_ON_TAP');
                              logFirebaseEvent('Image_expand_image');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: CachedNetworkImage(
                                      fadeInDuration:
                                          const Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          const Duration(milliseconds: 500),
                                      imageUrl: valueOrDefault<String>(
                                        widget.detlahes?.img,
                                        'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxhcHB8ZW58MHx8fHwxNzAwNDk5ODg5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: true,
                                    tag: valueOrDefault<String>(
                                      widget.detlahes?.img,
                                      'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxhcHB8ZW58MHx8fHwxNzAwNDk5ODg5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    ),
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: valueOrDefault<String>(
                                widget.detlahes?.img,
                                'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxhcHB8ZW58MHx8fHwxNzAwNDk5ODg5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                              ),
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: const Duration(milliseconds: 500),
                                  fadeOutDuration: const Duration(milliseconds: 500),
                                  imageUrl: valueOrDefault<String>(
                                    widget.detlahes?.img,
                                    'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxhcHB8ZW58MHx8fHwxNzAwNDk5ODg5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  ),
                                  width: 1200.0,
                                  height: 900.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (currentUserEmailVerified)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 500.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: true,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF875FD0),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                maxLines: 3,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'DETALHE_COPIAR_CÓDIGO_DA_PÁGINA_BTN_ON_T');
                            if (currentUserEmailVerified) {
                              logFirebaseEvent('Button_copy_to_clipboard');
                              await Clipboard.setData(ClipboardData(
                                  text: widget.detlahes!.copypage!));
                              logFirebaseEvent('Button_show_snack_bar');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Copiado com Sucesso ;)',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              logFirebaseEvent('Button_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: const Color(0x7A14181B),
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                      child: GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const CriarcontaWidget(),
                                    ),
                                  ));
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          text: 'Copiar Código da Página',
                          icon: const Icon(
                            Icons.content_copy,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF875FD0),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Noto Serif',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          showLoadingIndicator: false,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 100.0, 0.0),
                          child: Text(
                            dateTimeFormat('dd/MM/yyyy | kk:mm',
                                widget.detlahes!.createdAt),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 20.0,
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
    );
  }
}
