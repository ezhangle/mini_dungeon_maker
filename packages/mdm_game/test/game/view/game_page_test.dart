// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:mdm_game/game/game.dart';

import '../../helpers/helpers.dart';

void main() {
  group('GamePage', () {
    testWidgets('renders a game widget', (tester) async {
      await tester.pumpApp(GamePage());

      expect(find.byType(GameView), findsOneWidget);
    });

    testWidgets('route is pushed a GamePage', (tester) async {
      await tester.pumpRoute<void>(GamePage.route());

      expect(find.byType(GameView), findsOneWidget);
    });
  });
}
