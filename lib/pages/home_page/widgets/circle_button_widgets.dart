import 'package:flutter/material.dart';
import 'package:new_landing_page/pages/calender_page/calender_page_screen.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;

  const CircleButton({
    Key? key,
    required this.onPressed,
    required this.backgroundColor,
    this.iconColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, CalenderPageScreen.routeName);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Icon(
          Icons.chevron_right,
          color: iconColor,
          size: 40,
        ),
      ),
    );
  }
}
