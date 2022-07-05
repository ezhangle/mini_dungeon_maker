// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:mdm_game/title/title.dart';
import 'package:mockingjay/mockingjay.dart';

import '../../helpers/helpers.dart';

void main() {
  group('TitlePage', () {
    testWidgets('renders the title', (tester) async {
      await tester.pumpApp(TitlePage());

      expect(find.text('Mini Dungeon Maker'), findsOneWidget);
    });

    testWidgets('navigates to game view when tap play', (tester) async {
      final navigator = MockNavigator();
      when(() => navigator.push<void>(any())).thenAnswer((_) => Future.value());
      await tester.pumpApp(TitlePage(), navigator: navigator);

      await tester.tap(find.text('Play'));
      await tester.pumpNavigation();

      verify(() => navigator.push<void>(any())).called(1);
    });
  });
}
