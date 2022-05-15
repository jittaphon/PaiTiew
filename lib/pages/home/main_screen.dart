import 'package:flutter/material.dart';
import 'package:paitiew/constant/constants.dart';
import 'package:paitiew/pages/Login/login.dart';
import 'package:paitiew/pages/detail/detail.dart';

import 'package:paitiew/pages/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  List icons = [
    // Icons.login,
    Icons.home,
    // Icons.details,
    // Icons.notifications,
    Icons.person,
  ];

  List pages = [
    // const Login(),
    HomeScreen(),
    const DetailPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(2, (index) => pages[index]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // SizedBox(width: 7),
            buildTabIcon(0),
            buildTabIcon(1),
            // SizedBox(width: 7),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: const CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => _pageController.jumpToPage(1),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  buildTabIcon(int index) {
    return Container(
      // margin:
      //     EdgeInsets.fromLTRB(index == 0 ? 30 : 0, 0, index == 1 ? 30 : 0, 0),
      child: IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
        ),
        color: _page == index
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).textTheme.caption?.color,
        onPressed: () => _pageController.jumpToPage(index),
      ),
    );
  }
}
