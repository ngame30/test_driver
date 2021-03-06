import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gherkin_test_trial/adder.dart';

import '../_helper/scenario.dart';

class AdderSetTo1 extends Scenario {
  const AdderSetTo1({Key? key}) : super(key: key);

  @override
  Future<void> initScenario() async {
    GetIt.I.registerLazySingleton(() => Adder(number: 1));
  }
}
