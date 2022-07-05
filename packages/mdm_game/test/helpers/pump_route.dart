import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers.dart';

extension PumpRouteX on WidgetTester {
  Future<void> pumpRoute<T>(Route<T> route) async {
    await pumpApp(
      Builder(
        builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Navigator.of(context).push<T>(route);
            },
            child: const Text('_ROUTE_'),
          );
        },
      ),
    );

    await tap(find.text('_ROUTE_'));
    await pump();
    await pump();
  }
}
