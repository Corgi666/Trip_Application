import 'package:flutter/material.dart';
import 'package:travelapp/appconst/colors.dart';

class response_button extends StatelessWidget {
  final double width;
  const response_button({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Image(image: AssetImage('assets/img/button-one.png')),
    );
  }
}
