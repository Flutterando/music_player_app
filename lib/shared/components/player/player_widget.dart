import 'dart:ui';

import 'package:flutter/material.dart';

import 'album/album_widget.dart';
import 'buttons/buttons_widget.dart';
import 'progress/progress_widget.dart';
import 'sound/sound_widget.dart';

class PlayerWidget extends StatelessWidget {
  PlayerWidget();

  static Widget toPage({@required Widget child}) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          child,
          Positioned(
            bottom: 25,
            left: 25,
            right: 25,
            child: PlayerWidget(),
          ),
        ],
      ),
    );
  }

  final Duration currentSeconds = Duration(seconds: 217);
  final Duration maxSeconds = Duration(seconds: 520);
  Duration get lastSeconds => maxSeconds - currentSeconds;

  String get currentSecondsString => currentSeconds.toString().substring(
      currentSeconds.toString().indexOf(":") + 1,
      currentSeconds.toString().indexOf("."));

  String get lastSecondsString => lastSeconds.toString().substring(
      lastSeconds.toString().indexOf(":") + 1,
      lastSeconds.toString().indexOf("."));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black12),
            ),
          ),
        ),
        Container(
          height: 100,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              AlbumWidget(),
              Expanded(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    constraints: BoxConstraints(maxWidth: 600),
                    child: Column(
                      children: [
                        ButtonsWidget(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              child: Text(currentSecondsString),
                            ),
                            Expanded(
                              child: ProgressWidget(
                                value: currentSeconds.inSeconds,
                                maxValue: maxSeconds.inSeconds,
                              ),
                            ),
                            Container(
                              width: 50,
                              alignment: Alignment.bottomRight,
                              child: Text(lastSecondsString),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 130,
                margin: EdgeInsets.only(right: 30),
                child: SoundWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
