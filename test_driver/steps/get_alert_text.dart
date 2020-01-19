import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

class GetAlertText extends ThenWithWorld<FlutterWorld> {
  GetAlertText()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // FlutterWorld extends World, world contains driver intance
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getAlertText(), "Welcome to Elixir Automation 0",
        reason: "Alert text should be Welcome to Elixir Automation 0.");
  }

  @override
  RegExp get pattern =>
      RegExp(r"I expect alert text to be Welcome to Elixir Automation 0");
}
