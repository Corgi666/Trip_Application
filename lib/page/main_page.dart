import 'package:flutter/material.dart';
import 'package:travelapp/page/bar_item.dart';
import 'package:travelapp/page/homepage.dart';
import 'package:travelapp/page/my_page.dart';
import 'package:travelapp/page/navpage.dart';
import 'package:travelapp/page/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [homepage(), NavPage(), SearchPage(), MyPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
      print(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: 'Bar', icon: Icon(Icons.bar_chart_outlined)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'My', icon: Icon(Icons.person))
          ]),
    );
  }
}
