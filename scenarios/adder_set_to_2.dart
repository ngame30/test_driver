import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gherkin_test_trial/adder.dart';
import 'package:gherkin_test_trial/my_app.dart';

import '../_helper/scenario.dart';

class AdderSetTo2 extends Scenario {
  const AdderSetTo2({Key? key}) : super(key: key);

  @override
  Widget get testWidget => MyApp();

  @override
  Future<void> initScenario() async {
    GetIt.I.registerLazySingleton(() => Adder(number: 2));
  }
}
