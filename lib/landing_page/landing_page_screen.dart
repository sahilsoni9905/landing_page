import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_landing_page/bottom_bar.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFFFE8CD),
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! < 0) {
            Navigator.pushNamed(context, MyBottomNavBar.routeName);
          }
        },
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ClipRect(
                          child: Image.asset(
                            'assets/images/top_sun.png',
                            height: screenHeight * 0.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  ClipRect(
                    child: Image.asset(
                      'assets/images/font_image.png',
                      height: screenHeight * 0.16, 
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.5, 
                  ),
                  Text(
                    'To feel 20 again',
                    style: GoogleFonts.josefinSans(
                        fontSize: screenWidth * 0.08,
                        color: const Color(0xFF053901)),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    'SWIPE RIGHT',
                    style: GoogleFonts.quicksand(fontSize: screenWidth * 0.05),
                  ),
                ],
              ),
              Positioned(
                top: screenHeight * 0.04,
                left: screenWidth * -0.18,
                right: 0,
                child: ClipRect(
                  child: Image.asset(
                    'assets/images/center_yoga.png',
                    fit: BoxFit.cover,
                    height: screenHeight * 0.72,
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.83,
                left: 0,
                right: 0,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/right_arrow.png',
                    fit: BoxFit.cover,
                    height: screenHeight * 0.04,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
