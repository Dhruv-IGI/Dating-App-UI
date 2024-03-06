import 'package:dating_app/Screens/likes_Screen.dart';
import 'package:dating_app/Screens/profile_screen.dart';
import 'package:dating_app/Screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
    onPageChanged(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const ScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          LikeScreen(),
          SearchScreen(),
          ProfileScreen(),
        ],
      ), //destination screen
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _page,
        onTap: (page) {
        navigationTapped(page);
        },
        items: [
          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: const Color.fromARGB(255, 140, 82, 255),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
