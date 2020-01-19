import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

class InitialStateOfApp extends GivenWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // FlutterWorld extends World, world contains driver intance
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getCounterText(), "0",
        reason: "Not the initial state of application.");
  }

  @override
  RegExp get pattern => RegExp(r"I expect initial state of the app");
}
