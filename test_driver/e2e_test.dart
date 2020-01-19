import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'pages/home_page.dart';

void main() {
  group('flutter automation', () {
    FlutterDriver driver;
    HomePage homePage;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      homePage = HomePage(driver);
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('increment the counter', () async {
      await homePage.tapIncrementButton();
      expect(await homePage.getCounterText(), '1');

      await homePage.tapIncrementButton();
      expect(await homePage.getCounterText(), '2');
    });

    test("test alert window", () async {
      await homePage.tapStatusButton();
      expect(await homePage.getAlertText(), 'Welcome to Elixir Automation 2');

      await homePage.tapCloseButton();
      await homePage.tapSubstractButton();

      await homePage.tapStatusButton();
      expect(await homePage.getAlertText(), 'Welcome to Elixir Automation 1');
    });
  });
}
