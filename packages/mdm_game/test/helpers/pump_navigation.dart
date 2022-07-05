import 'package:flutter_test/flutter_test.dart';

extension PumpNavigationX on WidgetTester {
  Future<void> pumpNavigation() async {
    await pump(); // Navigation
    await pump(); // Page render
  }
}
