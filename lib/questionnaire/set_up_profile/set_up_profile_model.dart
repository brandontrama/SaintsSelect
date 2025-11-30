import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'set_up_profile_widget.dart' show SetUpProfileWidget;
import 'package:flutter/material.dart';

class SetUpProfileModel extends FlutterFlowModel<SetUpProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 3500;
  int timerMilliseconds = 3500;
  String timerValue = StopWatchTimer.getDisplayTime(
    3500,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
