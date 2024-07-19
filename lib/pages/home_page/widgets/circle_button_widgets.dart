import 'package:flutter/material.dart';

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
      onTap: onPressed,
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
