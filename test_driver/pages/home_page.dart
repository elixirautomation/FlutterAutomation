import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  final counterTextFinder = find.byValueKey('counter');
  final incrementButton = find.byValueKey("increment");
  final statusButton = find.byValueKey("status");
  final substractButton = find.byValueKey("substract");
  final alertText = find.byValueKey("alert_text");
  final closeButton = find.byValueKey("close_button");

  FlutterDriver _driver;

  HomePage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<String> getCounterText() async {
    return await _driver.getText(counterTextFinder);
  }

  Future<String> getAlertText() async {
    return await _driver.getText(alertText);
  }

  Future<void> tapIncrementButton() async {
    await _driver.tap(incrementButton);
  }

  Future<void> tapSubstractButton() async {
    await _driver.tap(substractButton);
  }

  Future<void> tapStatusButton() async {
    await _driver.tap(statusButton);
  }

  Future<void> tapCloseButton() async {
    await _driver.tap(closeButton);
  }
}
