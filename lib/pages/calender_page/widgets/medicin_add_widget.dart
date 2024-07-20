import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMedicineDialog extends StatefulWidget {
  @override
  _AddMedicineDialogState createState() => _AddMedicineDialogState();
}

class _AddMedicineDialogState extends State<AddMedicineDialog> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      backgroundColor: const Color(0xFFBFD6AA),
      child: Container(
        height: screenHeight * 0.7,
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.7 * 0.18,
              decoration: BoxDecoration(
                color: Color(0xFF053901),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.8 * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Time to Chart 📈',
                          style: GoogleFonts.josefinSans(
                              color: Color(0xFF92B78F),
                              fontSize: screenHeight * 0.7 * 0.035),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.8 * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '----> Health to Wellness',
                          style: GoogleFonts.josefinSans(
                              color: Color(0xFF92B78F),
                              fontSize: screenHeight * 0.7 * 0.035),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenHeight * 0.7 * 0.04),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.7 * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Which Medication are you \non',
                        style: GoogleFonts.josefinSans(
                            fontSize: screenHeight * 0.7 * 0.03,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF042D00),
                            height: screenHeight * 0.7 * 0.002),
                      ),
                      // 
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
