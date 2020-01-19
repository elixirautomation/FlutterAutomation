import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

class GetCounterText extends ThenWithWorld<FlutterWorld> {
  GetCounterText()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // FlutterWorld extends World, world contains driver intance
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getCounterText(), "1",
        reason: "Counter should be 1.");
  }

  @override
  RegExp get pattern => RegExp(r"I expect the counter to be 1");
}
