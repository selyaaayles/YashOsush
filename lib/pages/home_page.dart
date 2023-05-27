import 'package:flutter/material.dart';
import 'package:yash_osush/components/work_cont.dart';
import 'package:yash_osush/pages/first_page.dart';
import 'package:yash_osush/pages/login_page.dart';
import 'package:yash_osush/pages/profile_page.dart';
import 'package:yash_osush/pages/programs_page.dart';

import '../components/heading.dart';
import '../components/search.dart';
import '../utils/style.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List pages = [FirstPage(), Programs(), LoginPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        backgroundColor: theme,
        iconSize: 14,
        elevation: 0,
        selectedIconTheme: IconThemeData(color: maintxt),
        unselectedItemColor: icon,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/work_icon.png'),
              label: '',
              activeIcon: Image.asset(
                'assets/work_icon.png',
                color: maintxt,
              )),
          BottomNavigationBarItem(
              icon: Image.asset('assets/study_icon.png'),
              label: '',
              activeIcon: Image.asset(
                'assets/study_icon.png',
                color: maintxt,
              )),
          BottomNavigationBarItem(
              icon: Image.asset('assets/acc_icon.png'),
              label: '',
              activeIcon: Image.asset(
                'assets/acc_icon.png',
                color: maintxt,
              )),
        ],
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
      ),
    );
  }
}
