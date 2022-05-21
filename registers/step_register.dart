import 'package:gherkin/gherkin.dart';

import '../steps/given_init_to.dart';

class StepRegister {
  static final List<StepDefinitionGeneric<World>> steps = [
    givenInitTo(),
  ];
}
