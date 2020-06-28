import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .2,
      height: size.height,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _topSection,
          _middleSection,
          _bottomSheet,
        ],
      ),
    );
  }

  Widget get _topSection => Container(
        child: Column(
          children: [
            CustomFlatButton(
              title: 'Listen now',
              isPressed: true,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Browse',
              isPressed: false,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Radio',
              isPressed: false,
            ),
          ],
        ),
      );
  Widget get _middleSection => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Library",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButtonIcon(
              title: 'Recent',
              icon: Icons.access_time,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButtonIcon(
              title: 'Albuns',
              icon: Icons.library_music,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButtonIcon(
              title: 'Songs',
              icon: Icons.audiotrack,
            ),
          ],
        ),
      );
  Widget get _bottomSheet => Container(
        child: Column(
          children: [
            Text(
              "Playlist",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Summer',
              isPressed: false,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Smasher vol.III',
              isPressed: false,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Vibes',
              isPressed: false,
            ),
          ],
        ),
      );
}

class CustomFlatButton extends StatelessWidget {
  final String title;
  final bool isPressed;

  const CustomFlatButton({
    Key key,
    @required this.title,
    @required this.isPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.12,
      height: 42,
      decoration: BoxDecoration(
        color: isPressed ? Colors.white.withOpacity(0.08) : Colors.transparent,
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomFlatButtonIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomFlatButtonIcon(
      {Key key, @required this.title, @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.12,
      height: 42,
      child: FlatButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
