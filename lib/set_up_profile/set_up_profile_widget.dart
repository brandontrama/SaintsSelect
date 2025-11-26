import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'set_up_profile_model.dart';
export 'set_up_profile_model.dart';

/// Welcome Screen With CTA
class SetUpProfileWidget extends StatefulWidget {
  const SetUpProfileWidget({super.key});

  static String routeName = 'SetUpProfile';
  static String routePath = '/setUpProfile';

  @override
  State<SetUpProfileWidget> createState() => _SetUpProfileWidgetState();
}

class _SetUpProfileWidgetState extends State<SetUpProfileWidget>
    with TickerProviderStateMixin {
  late SetUpProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasTextTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetUpProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    animationsMap.addAll({
      'textOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Paste_Image_(2).png',
                  ).image,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).height * 0.25,
                        0.0,
                      ),
                      0.0,
                      0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          FFAppState()
                              .currentPhrase
                              .elementAtOrNull(FFAppState().currentPhraseIndex),
                          'ONE MOMENT WHILE YOUR PROFILE IS BEING CREATED...',
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  font: GoogleFonts.oswald(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF006B54),
                                  fontSize: 64.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayLarge
                                      .fontStyle,
                                  lineHeight: 1.0,
                                ),
                      ).animateOnActionTrigger(
                          animationsMap['textOnActionTriggerAnimation']!,
                          hasBeenTriggered: hasTextTriggered),
                      Lottie.network(
                        'https://lottie.host/994c93bd-db99-48d0-9967-fd9ea60f2813/5KVoSkd6iW.json',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.contain,
                        frameRate: FrameRate(60.0),
                        animate: true,
                      ),
                      Opacity(
                        opacity: 0.0,
                        child: FlutterFlowTimer(
                          initialTime: _model.timerInitialTimeMs,
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            milliSecond: false,
                          ),
                          controller: _model.timerController,
                          updateStateInterval: Duration(milliseconds: 1000),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timerMilliseconds = value;
                            _model.timerValue = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          onEnded: () async {
                            if (animationsMap['textOnActionTriggerAnimation'] !=
                                null) {
                              safeSetState(() => hasTextTriggered = true);
                              SchedulerBinding.instance.addPostFrameCallback(
                                  (_) async => await animationsMap[
                                          'textOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0));
                            }
                            await Future.delayed(
                              Duration(
                                milliseconds: 200,
                              ),
                            );
                            FFAppState().currentPhraseIndex =
                                FFAppState().currentPhraseIndex == 0 ? 1 : 0;
                            safeSetState(() {});
                            _model.timerController.onResetTimer();

                            _model.timerController.onStartTimer();
                          },
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ].divide(SizedBox(height: 40.0)),
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
