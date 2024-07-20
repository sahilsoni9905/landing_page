import 'package:flutter/material.dart';
import 'package:new_landing_page/pages/home_page/home_page_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  static const String routeName = 'bottom-bar';
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyBottomNavBar> {
  int myCurrentIndex = 0;
  List<Widget> pages = [
    const HomePageScreen(), // Use const for page widgets
    const HomePageScreen(),
    const HomePageScreen(),
    const HomePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          height: screenHeight * 0.08,
          margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.10, vertical: 30),
          decoration: BoxDecoration(
            color: const Color(
                0xFFD7E5CA), 
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 25,
                offset: const Offset(8, 20),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor:
                  Colors.transparent, // Make the background transparent
              selectedItemColor: Color.fromARGB(255, 5, 59, 10),
              unselectedItemColor: Colors.black,
              currentIndex: myCurrentIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/home_icon.png',
                    height: screenHeight * 0.035,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/profile_icon.png',
                    height: screenHeight * 0.035,
                  ),
                  label: "Profile",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/journal_icon.png',
                    height: screenHeight * 0.035,
                  ),
                  label: "Journal",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/medical_record_icon.png',
                    height: screenHeight * 0.035,
                  ),
                  label: "Records",
                ),
              ],
            ),
          ),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
