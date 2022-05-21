part of 'app.dart';

class _TestStarter extends StatelessWidget {
  const _TestStarter(
    this.scenarioBuilders, {
    Key? key,
  }) : super(key: key);

  final List<Scenario> scenarioBuilders;

  @override
  Widget build(BuildContext context) {
    checkDuplicates();
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: scenarioBuilders,
        ),
      ),
    );
  }

  void checkDuplicates() {
    for (final item in scenarioBuilders) {
      if (scenarioBuilders
              .where(
                (element) => element.keyName == item.keyName,
              )
              .length !=
          1) {
        throw Exception('duplicate scenario: ${item.keyName}');
      }
    }
  }
}
