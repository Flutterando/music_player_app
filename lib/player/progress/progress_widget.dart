import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final int value;
  final int maxValue;
  final Color color;

  const ProgressWidget({
    Key key,
    @required this.value,
    @required this.maxValue,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      decoration: BoxDecoration(
        color: color.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            flex: value,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Expanded(
            flex: maxValue - value,
            child: Container(color: Colors.transparent),
          ),
        ],
      ),
    );
  }
}
