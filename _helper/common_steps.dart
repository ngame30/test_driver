part of './gherkin_mocker.dart';

class _CommonSteps {
  static List<StepDefinitionGeneric<World>> steps = [
    when1<String, FlutterWorld>(
      RegExp(r'I init scenario {string}'),
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
    ),
  ];
}
