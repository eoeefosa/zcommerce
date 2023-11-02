import 'package:flutter/material.dart';
import 'package:zcommerce/view/account.dart';
import 'package:zcommerce/view/categories.dart';
import 'package:zcommerce/view/feed.dart';
import 'package:zcommerce/view/help.dart';
import 'package:zcommerce/view/homescreen.dart';
import 'package:zcommerce/widgets/searchcontainer.dart';
import 'package:zcommerce/widgets/searchwidget.dart';

import '../widgets/cartwidget.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreenState();
}

class _ScreenState extends State<Screens> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const HomeScreen(),
    const CategoriesScreen(),
    const FeedScreen(),
    const AccountScreen(),
    const HelpScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<String> screenTitles = [
    'Home',
    'Categories',
    'Feed',
    'Account',
    'Help',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex < 2
          ? AppBar(
              backgroundColor: Colors.black87,
              title: SearchContainer(
                onSearch: (search) {},
              ),
              actions: const [
                // SizedBox(width: 8),
                CartWiget(count: 10),
                SizedBox(width: 8)
              ],
            )
          : AppBar(
              backgroundColor: Colors.black87,
              title: Text(screenTitles[_selectedIndex]),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                const SizedBox(width: 16),
                const CartWiget(count: 10),
                const SizedBox(width: 16)
              ],
            ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(245, 127, 23, 1),
        unselectedItemColor: Colors.black87,

        showUnselectedLabels: true,
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.blinds_closed),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_sharp),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_sharp,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help_outline_rounded,
            ),
            label: 'Help',
          )
        ],
      ),
    );
  }
}
