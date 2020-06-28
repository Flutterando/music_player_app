import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              "assets/floating_points_logo.png",
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Floating Points",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Ratio"),
          ],
        ),
      ],
    );
  }
}
