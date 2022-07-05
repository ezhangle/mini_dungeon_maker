import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mdm_game/game/view/view.dart';
import 'package:mdm_game/l10n/l10n.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                l10n.appTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
          const Gap(16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push<void>(GamePage.route());
            },
            child: Text(l10n.play),
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
