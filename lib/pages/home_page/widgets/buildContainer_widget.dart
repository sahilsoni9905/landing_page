import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_landing_page/pages/home_page/widgets/circle_button_widgets.dart';

Widget buildContainer(
  BuildContext context, {
  required Color color,
  String? text,
  String? imageAsset,
  required double width,
  required double height,
  required Color buttonBackgroundColor,
  required Color iconColor,
  required Color textColor,
  required String imgAddress,
}) {
  return Container(
    width: width,
    height: height,
    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (text != null)
              Text(
                text,
                style: GoogleFonts.josefinSans(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    height: MediaQuery.of(context).size.height * 0.0012,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleButton(
                onPressed: () {
                  // Navigate to the next screen
                },
                backgroundColor:
                    buttonBackgroundColor, // Custom background color
                iconColor: iconColor, // Custom icon color
              ),
            ),
          ],
        ),
        Positioned(
          top: height * 0.35,
          left: width * 0.15,
          child: Image.asset(
            imgAddress,
            height: height * 0.4, // Adjust this to your desired height

            fit: BoxFit.contain, // Ensure the image is scaled within its bounds
          ),
        ),
      ],
    ),
  );
}
