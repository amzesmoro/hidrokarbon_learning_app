import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';
import 'package:hidrokarbon_learning_app/pages/bottom_navigation/materi_page.dart';
import 'package:hidrokarbon_learning_app/pages/bottom_navigation/quiz_page.dart';
import 'package:hidrokarbon_learning_app/pages/bottom_navigation/video_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeMenuPage extends StatefulWidget {
  const HomeMenuPage({Key? key}) : super(key: key);

  @override
  _HomeMenuPageState createState() => _HomeMenuPageState();
}

class _HomeMenuPageState extends State<HomeMenuPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List _pages = [
    MateriPage(),
    QuizPage(),
    VideoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text(
              'Materi',
              style: boldBlueTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            selectedColor: blueColor,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.quiz_outlined),
            title: Text(
              'Kuis',
              style: boldBlueTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            selectedColor: blueColor,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.video_camera_front_outlined),
            title: Text(
              'Video',
              style: boldBlueTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            selectedColor: blueColor,
          ),
        ],
      ),
    );
  }
}
