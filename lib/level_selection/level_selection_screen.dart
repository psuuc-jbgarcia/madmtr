import 'package:flutter/material.dart';
import 'package:basic/level_selection/gamescreen.dart'; // Import your Endless Runner game widget
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../audio/audio_controller.dart';
import '../audio/sounds.dart';
import '../player_progress/player_progress.dart';
import '../style/my_button.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import 'package:flutter/services.dart'; // Import the services library

class Screen extends StatelessWidget {
  const Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    final palette = context.watch<Palette>();
    final playerProgress = context.watch<PlayerProgress>();
    final audioController = context.watch<AudioController>();

    return Scaffold(
      backgroundColor: palette.backgroundLevelSelection,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Endless Runner game widget
          Expanded(
            child: EndlessRunnerGame(), // Replace with your Endless Runner game widget
          ),
                    ],
      ),
    );
  }
}
