import 'package:flutter/material.dart';
import 'package:music_player_app/shared/components/drawer/drawer.dart';
import 'package:music_player_app/shared/components/music_card/music_card_widget.dart';
import 'package:music_player_app/shared/components/search_bar/search_bar_widget.dart';
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
        front: Row(
          children: [
            CustomDrawer(),
            Expanded(
              child: Container(
                color: Colors.black26,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SearchBarWidget(),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Listen now",
                            style: Theme.of(context).textTheme.headline2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            minHeight: MediaQuery.of(context).size.height,
                          ),
                          child: Builder(builder: (context) {
                            int columnsCount;

                            if (MediaQuery.of(context).size.width > 1545)
                              columnsCount = 5;
                            else if (MediaQuery.of(context).size.width > 1234)
                              columnsCount = 4;
                            else
                              columnsCount = 3;

                            return GridView(
                              shrinkWrap: true,
                              padding: EdgeInsets.fromLTRB(25, 25, 25, 130),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: columnsCount,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              children: [
                                MusicCardWidget(
                                  title: "Peggy Gou",
                                  subtitle: "DJ Kicks",
                                  image: "assets/peggy_gou.png",
                                ),
                                MusicCardWidget(
                                  title: "Four Tet",
                                  subtitle: "Teenage Birdsong",
                                  image: "assets/four_tet.png",
                                ),
                                MusicCardWidget(
                                  title: "Jayda G",
                                  subtitle: "Significant Changes",
                                  image: "assets/jayda_g.png",
                                ),
                                MusicCardWidget(
                                  title: "Four Tet",
                                  subtitle: "Floating Points",
                                  image: "assets/floating_points.png",
                                ),
                                MusicCardWidget(
                                  title: "Four Tet",
                                  subtitle: "Billie Elish",
                                  image: "assets/billie_elish.png",
                                ),
                                MusicCardWidget(
                                  title: "Four Tet",
                                  subtitle: "Arch Enimy",
                                  image: "assets/arch_enemy.png",
                                ),
                              ],
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
