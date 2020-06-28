import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: 250,
      height: size.height,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              3,
              (i) => Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.only(left: 3, top: 25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          _topSection,
          SizedBox(height: 50),
          _middleSection,
          SizedBox(height: 50),
          _bottomSheet,
        ],
      ),
    );
  }

  Widget get _topSection => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFlatButton(
              title: 'Listen now',
              isPressed: true,
              bold: true,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Browse',
              isPressed: false,
              bold: true,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFlatButton(
              title: 'Radio',
              isPressed: false,
              bold: true,
            ),
          ],
        ),
      );

  Widget get _middleSection => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
  final bool bold;

  const CustomFlatButton({
    Key key,
    @required this.title,
    @required this.isPressed,
    this.bold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 250,
        height: 42,
        decoration: BoxDecoration(
          color:
              isPressed ? Colors.black.withOpacity(0.08) : Colors.transparent,
        ),
        child: FlatButton(
          onPressed: () {},
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFlatButtonIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomFlatButtonIcon({
    Key key,
    @required this.title,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 250,
        height: 42,
        child: FlatButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
