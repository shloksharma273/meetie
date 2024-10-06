import 'package:flutter/material.dart';
import 'package:meetie/utils/colors.dart';

class MeetingOptions extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;
  const MeetingOptions({
    required this.text,
    required this.isMute,
    required this.onChange,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),

          Switch.adaptive(value: isMute, onChanged: onChange)
        ],
      ),
    );
  }
}
