import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_food_order_app/presentation/widgets/account_content.dart';
import 'package:test_food_order_app/presentation/widgets/home_content.dart';
import 'package:test_food_order_app/presentation/widgets/order_contet.dart';
import 'package:test_food_order_app/presentation/widgets/search_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeContent(),
    SearchContent(),
    OrderContet(),
    AccountContent()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
