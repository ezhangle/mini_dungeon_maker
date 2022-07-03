// ignore_for_file: prefer_const_constructors

import 'package:mdm_domain/mdm_domain.dart';
import 'package:test/test.dart';

void main() {
  group('Dungeon', () {
    test('can be instantiated', () {
      expect(Dungeon(id: 0, name: '', description: ''), isNotNull);
    });

    test('supports value comparison', () {
      expect(
        Dungeon(id: 0, name: '', description: ''),
        equals(Dungeon(id: 0, name: '', description: '')),
      );

      expect(
        Dungeon(id: 0, name: '', description: ''),
        isNot(equals(Dungeon(id: 1, name: '', description: ''))),
      );

      expect(
        Dungeon(id: 0, name: '', description: ''),
        isNot(equals(Dungeon(id: 0, name: 'a', description: ''))),
      );

      expect(
        Dungeon(id: 0, name: '', description: ''),
        isNot(equals(Dungeon(id: 0, name: '', description: 'a'))),
      );
    });
  });
}
