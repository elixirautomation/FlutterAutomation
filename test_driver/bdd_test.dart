import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/get_alert_text.dart';
import 'steps/get_counter.dart';
import 'steps/initial_state_of_app.dart';
import 'steps/tap_close_button.dart';
import 'steps/tap_increment_button.dart';
import 'steps/tap_status_button.dart';
import 'steps/tap_substract_button.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    ..stepDefinitions = [
      InitialStateOfApp(),
      TapIncrementButton(),
      GetCounterText(),
      TapSubstractButton(),
      TapStatusButton(),
      GetAlertText(),
      TapCloseButton()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/bdd.dart"
    // ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
    ..exitAfterTestRun = true; // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}
