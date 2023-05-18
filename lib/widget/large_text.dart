import 'package:flutter/material.dart';

class large_text extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  const large_text(
      {super.key,
      this.color = Colors.black,
      required this.text,
      this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color,fontWeight: FontWeight.bold),
    );
  }
}
