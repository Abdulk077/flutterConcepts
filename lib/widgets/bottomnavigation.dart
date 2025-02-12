import 'package:flutter/material.dart';

class BottomNavigatioT extends StatefulWidget {
  const BottomNavigatioT({super.key});

  @override
  State<BottomNavigatioT> createState() => _BottomNavigatioTState();
}

class _BottomNavigatioTState extends State<BottomNavigatioT> {
  @override
  int selectedindex = 0;

  PageController pageController = PageController();

    void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          children: [
            // Add your screens here
            Text('Screen 1'),
            Text('Screen 2'),
            Text('Screen 3'),],
          
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
      currentIndex: selectedindex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: onTapped,
    ),
    );
  }
}
