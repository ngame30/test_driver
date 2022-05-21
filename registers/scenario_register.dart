import '../_helper/scenario.dart';
import '../scenarios/adder_set_to_1.dart';
import '../scenarios/adder_set_to_2.dart';
import '../scenarios/adder_set_to_3.dart';

class ScenarioRegister {
  static final List<Scenario> scenarios = [
    const AdderSetTo1(),
    const AdderSetTo2(),
    const AdderSetTo3(),
  ];
}
