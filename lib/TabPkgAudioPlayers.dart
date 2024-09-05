import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TabPkgAudioPlayers extends StatefulWidget {
  const TabPkgAudioPlayers({super.key});

  @override
  State<TabPkgAudioPlayers> createState() => _AudioPlayersState();
}

class _AudioPlayersState extends State<TabPkgAudioPlayers> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "القارى العجمي",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                " :سورة الاخلاص ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              ///play
              Container(
                height: 50,
                width: 100,
                color: Colors.green,
                child: MaterialButton(
                  onPressed: () async {
                    AudioCache.instance = AudioCache(prefix: '');

                    await player
                        .play(AssetSource("assets/sound/allhlas_ajmy.mp3"));
                  },
                  child: Text("تشغيل"),
                ),
              ),
              //pause

              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () {
                    AudioCache.instance = AudioCache(prefix: '');

                    player.pause();
                  },
                  child: Text("إيقاف"),
                ),
              ),
              SizedBox(height: 20),
              Text(
                " :سورة الكوثر",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () async {
                    AudioCache.instance = AudioCache(prefix: '');
                    final player = AudioPlayer();
                    await player
                        .play(AssetSource("assets/sound/kauth_ajmy.mp3"));
                  },
                  child: Text("تشغيل"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "القارى الغامدي",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                " :سورة الاخلاص ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () async {
                    AudioCache.instance = AudioCache(prefix: '');
                    final player = AudioPlayer();
                    await player
                        .play(AssetSource("assets/sound/allhlas_ajmy.mp3"));
                  },
                  child: Text("تشغيل"),
                ),
              ),
              SizedBox(height: 20),
              Text(
                " :سورة الكوثر",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () async {
                    AudioCache.instance = AudioCache(prefix: '');
                    final player = AudioPlayer();
                    await player
                        .play(AssetSource("assets/sound/kauth_ajmy.mp3"));
                  },
                  child: Text("تشغيل"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
