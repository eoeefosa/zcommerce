import 'package:flutter/material.dart';
import 'package:zcommerce/view/account.dart';
import 'package:zcommerce/view/category%20screen/categories.dart';
import 'package:zcommerce/view/feedscreen/feed.dart';
import 'package:zcommerce/view/help.dart';
import 'package:zcommerce/view/homescreen.dart';
import 'package:zcommerce/widgets/search_icon.dart';
import 'package:zcommerce/widgets/searchcontainer.dart';

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
                CartWiget(),
                SizedBox(width: 8)
              ],
            )
          : _selectedIndex == 3
              ? const AccountAppBar()
              : AppBar(
                  elevation: 1,
                  backgroundColor: Colors.black87,
                  title: Text(screenTitles[_selectedIndex]),
                  actions: const [
                    SearchIcon(),
                    SizedBox(width: 16),
                    CartWiget(),
                    SizedBox(width: 16)
                  ],
                ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(245, 127, 23, 1),
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
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

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: const Text("Account"),
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 2),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Enter your account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[900],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('LOGIN'),
                  ),
                ),
              ],
            ),
          ),
          const Spacer()
        ],
      ),
      actions: const [
        SearchIcon(),
        SizedBox(width: 16),
        CartWiget(),
        SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight + 56.0); // Adjust the height as needed
}
