import 'package:flutter/material.dart';
import 'package:flutter_web_3/constants/colors.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: const TextStyle(
            color: colorText,
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              color: colorText,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}