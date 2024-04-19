import 'package:flutter/material.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';
import 'package:promilo_meetup/view/pages/home_page.dart';

class BottomNavigationBarPage extends StatelessWidget {
  BottomNavigationBarPage({super.key});

  final PageController controller = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: controller,
        onPageChanged: (index) {},
        children: const [
          SafeArea(child: HomePage()),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 2,
              offset: const Offset(0, -0.1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: AppTheme.skyBlue,
          unselectedItemColor: AppTheme.text,
          currentIndex: 2,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.window),
              label: 'Prolet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined),
              label: 'Meetup',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_open_outlined),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
