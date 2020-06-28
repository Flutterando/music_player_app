import 'package:flutter/material.dart';

import '../progress/progress_widget.dart';

class SoundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.volume_up),
        SizedBox(width: 15),
        Expanded(
          child: ProgressWidget(
            value: 60,
            maxValue: 100,
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}
