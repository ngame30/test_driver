part of './scenario.dart';

class _ScenarioWidget extends StatelessWidget {
  const _ScenarioWidget({
    Key? key,
    required this.keyName,
    required this.initScenario,
    required this.testWidget,
  }) : super(key: key);

  final String keyName;
  final Function initScenario;
  final Widget testWidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(keyName),
      title: Text(keyName),
      onTap: () async {
        await GetIt.I.reset();
        await initScenario();
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => testWidget,
          ),
        );
      },
    );
  }
}
