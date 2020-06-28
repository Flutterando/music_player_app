import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 15),
      child: Row(
        children: [
          Icon(Icons.search),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                "Search",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://i.imgur.com/lTy4hiN.jpg"),
          ),
        ],
      ),
    );
  }
}
