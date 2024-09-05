import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TabPkgAudioPlayers extends StatefulWidget {
  const TabPkgAudioPlayers({super.key});

  @override
  State<TabPkgAudioPlayers> createState() => _AudioPlayersState();
}

class _AudioPlayersState extends State<TabPkgAudioPlayers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 100,
          color: Colors.red,
          child: MaterialButton(
            onPressed: () async {
              AudioCache.instance = AudioCache(prefix: '');
              final player = AudioPlayer();
              await player.play(UrlSource("assets/sound/allhlas_ajmy.mp3"));
            },
            child: Text("data"),
          ),
        ),
      ],
    );
  }
}
