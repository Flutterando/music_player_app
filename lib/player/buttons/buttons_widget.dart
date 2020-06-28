import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.skip_previous),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.skip_next),
          onPressed: () {},
        ),
      ],
    );
  }
}
