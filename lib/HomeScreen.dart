import 'package:flutter/material.dart';
import 'package:task_3packages_ex_app/TabPkgAudioPlayers.dart';
import 'package:task_3packages_ex_app/TabPkgCarousel.dart';
import 'package:task_3packages_ex_app/TabPkgSpinkit.dart';

void main() {
  runApp(MyWhatsappApp());
}

class MyWhatsappApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Packages"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.square), text: "Spinkit"),
                Tab(icon: Icon(Icons.image), text: 'Carousel_Slider'),
                Tab(icon: Icon(Icons.audio_file_outlined), text: 'Audio'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Chats Tab
              TabPkgSpinkit(),
              TabPkgCarousel(),
              // TabPkgAudioPlayers()
            ],
          ),
        ),
      ),
    );
  }
}
