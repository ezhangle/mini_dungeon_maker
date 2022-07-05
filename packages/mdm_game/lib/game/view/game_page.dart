import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mdm_game/game/game.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const GamePage());
  }

  @override
  Widget build(BuildContext context) {
    return const GameView();
  }
}

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(game: MiniDungeonMakerGame()),
    );
  }
}
