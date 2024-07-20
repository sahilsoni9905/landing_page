import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:new_landing_page/pages/calender_page/widgets/medicin_add_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderPageScreen extends StatefulWidget {
  static const String routeName = 'Calender-page';
  const CalenderPageScreen({super.key});

  @override
  State<CalenderPageScreen> createState() => _CalenderPageScreenState();
}

class _CalenderPageScreenState extends State<CalenderPageScreen> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMMM').format(now);
    String dayOfWeek = DateFormat('EEEE').format(now).substring(0, 3);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFFFE8CD),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Calender.png',
                    width: screenWidth * 0.55,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: TableCalendar(
                    firstDay: DateTime.utc(2020, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    focusedDay: DateTime.now(),
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: GoogleFonts.josefinSans(
                          color: const Color(0xFF053901)),
                      weekendTextStyle: GoogleFonts.josefinSans(
                        color: const Color(0xFF053901),
                      ),
                      todayDecoration: const BoxDecoration(
                        color: Color(0xFF054400),
                        shape: BoxShape.circle,
                      ),
                      selectedDecoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      titleTextFormatter: (date, locale) =>
                          DateFormat.MMMM(locale).format(date),
                      titleTextStyle: GoogleFonts.josefinSans(
                        fontSize: screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    calendarBuilders: CalendarBuilders(
                      markerBuilder: (context, date, events) {
                        return Container();
                      },
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.12,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Color(0xFFCAD6C0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Today, $formattedDate, $dayOfWeek',
                        style: GoogleFonts.josefinSans(
                          color: const Color(0xFF053901),
                          fontSize: screenHeight * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Medications for the Day',
                        style: GoogleFonts.josefinSans(
                          color: const Color(0xFF053901),
                          fontSize: screenHeight * 0.02,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black12,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AddMedicineDialog();
                            },
                          );
                        },
                        child: Container(
                          width: screenWidth * 0.13,
                          height: screenWidth * 0.13,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF92B78F),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: screenWidth * 0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: screenHeight * 0.042,
              right: screenWidth * 0.75,
              child: Image.asset(
                'assets/images/ipo_calender_left.png',
                fit: BoxFit.contain,
                height: screenHeight * 0.07,
              ),
            ),
            Positioned(
              top: screenHeight * 0.042,
              left: screenWidth * 0.75,
              child: Image.asset(
                'assets/images/ipo_calender_right.png',
                fit: BoxFit.contain,
                height: screenHeight * 0.07,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
