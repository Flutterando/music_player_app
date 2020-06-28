import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlurWidget extends StatefulWidget {
  final Widget front;
  final Widget back;
  final double height;
  final double width;

  const BlurWidget({
    Key key,
    this.front,
    this.back,
    this.height = 210,
    this.width,
  }) : super(key: key);

  @override
  _BlurWidgetState createState() => _BlurWidgetState();
}

class _BlurWidgetState extends State<BlurWidget> {
  final GlobalKey cardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (widget.back != null) widget.back,
        if (widget.back != null)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
          ),
        if (widget.front != null) widget.front
      ],
    );
  }
}
