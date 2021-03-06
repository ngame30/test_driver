import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../registers/widget_register.dart';

part 'scenario_widget.dart';

abstract class Scenario extends StatelessWidget {
  const Scenario({Key? key}) : super(key: key);

  Future<void> initScenario() async {}

  Widget get testWidget => WidgetRegister.widget;

  @nonVirtual
  String get keyName => runtimeType.toString();

  @override
  Widget build(BuildContext context) => _ScenarioWidget(
        keyName: keyName,
        initScenario: initScenario,
        testWidget: testWidget,
      );
}
