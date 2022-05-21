import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import '../registers/step_register.dart';
part 'common_steps.dart';

class GherkinMocker {
  static Future<void> run() {
    final config = FlutterTestConfiguration.DEFAULT(
      [
        ..._CommonSteps.steps,
        ...StepRegister.steps,
      ],
    )
      ..features = [Glob(r"test_driver/features/**.feature")]
      ..restartAppBetweenScenarios = true
      ..flutterBuildTimeout = const Duration(minutes: 5)
      ..defaultTimeout = const Duration(minutes: 1)
      ..targetAppPath = 'test_driver/_helper/app.dart';
    return GherkinRunner().execute(config);
  }
}
