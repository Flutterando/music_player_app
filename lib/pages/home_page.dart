import 'package:flutter/material.dart';
import 'package:music_player_app/shared/utils/blur_widget.dart';

import '../shared/components/player/player_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PlayerWidget.toPage(
      child: BlurWidget(
        back: Image.network(
          "https://macmagazine.uol.com.br/wp-content/uploads/2020/06/22-wallpaper-macos-big-sur-1260x1260.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
