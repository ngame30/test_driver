import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_driver/driver_extension.dart';

import '../registers/scenario_register.dart';
import 'scenario.dart';

part 'test_starter.dart';

Future<void> main() async {
  enableFlutterDriverExtension();

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    _TestStarter(
      ScenarioRegister.scenarios,
    ),
  );
}
