import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric givenInitTo() {
  return when1<String, FlutterWorld>(
    RegExp(r'I given to {string}'),
    (string, context) async {
      final finder = find.byValueKey(string);

      try {
        await context.world.driver?.scrollIntoView(
          finder,
        );
        await FlutterDriverUtils.tap(
          context.world.driver,
          finder,
        );
      } catch (e) {
        // ignore: avoid_print
        print('scenario $string is not registered');
      }
    },
  );
}
