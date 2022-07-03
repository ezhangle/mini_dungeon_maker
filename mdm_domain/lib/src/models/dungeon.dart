import 'package:equatable/equatable.dart';

/// {@template dungeon}
/// Model representing a dungeon.
/// {@endtemplate}
class Dungeon extends Equatable {
  /// {@macro dungeon}
  const Dungeon({
    required this.id,
    required this.name,
    required this.description,
  });

  /// The id of the dungeon.
  final int id;

  /// The name of the dungeon.
  final String name;

  /// The description of the dungeon.
  final String description;

  @override
  List<Object?> get props => [id, name, description];
}
