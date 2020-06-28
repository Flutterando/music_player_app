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
            child: Image.network(
              "https://miro.medium.com/max/640/0*i1v1In2Tn4Stnwnl.jpg",
              fit: BoxFit.cover,
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
