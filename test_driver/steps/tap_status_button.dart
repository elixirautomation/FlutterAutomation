import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

class TapStatusButton extends WhenWithWorld<FlutterWorld> {
  TapStatusButton()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // FlutterWorld extends World, world contains driver intance
    HomePage homePage = HomePage(world.driver);
    await homePage.tapStatusButton();
  }

  @override
  RegExp get pattern => RegExp(r"I tap the status button");
}
