// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// for Challenge 03
class Emoji extends StatelessWidget {
  final String emoji;
  const Emoji({
    Key? key,
    required this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Text(
        emoji,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
