import 'package:flutter_test/flutter_test.dart';
import 'package:mdm_game/app/app.dart';
import 'package:mdm_game/title/title.dart';

void main() {
  group('App', () {
    testWidgets('renders TitlePage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(TitlePage), findsOneWidget);
    });
  });
}
