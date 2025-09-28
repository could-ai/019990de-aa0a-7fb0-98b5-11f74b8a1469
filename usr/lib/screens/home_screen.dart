import 'package:flutter/material.dart';
import 'package:the_earths_essence/screens/account_screen.dart';
import 'package:the_earths_essence/screens/balanced_bites_screen.dart';
import 'package:the_earths_essence/screens/cart_screen.dart';
import 'package:the_earths_essence/screens/cookbook_screen.dart';
import 'package:the_earths_essence/screens/orders_screen.dart';
import 'package:the_earths_essence/screens/store_screen.dart';
import 'package:the_earths_essence/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    StoreScreen(),
    BalancedBitesScreen(),
    CookBookScreen(),
    CartScreen(),
    OrdersScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    String title = "The Earth's Essence";
    switch (_selectedIndex) {
      case 0:
        title = 'Store';
        break;
      case 1:
        title = 'Balanced Bites AI';
        break;
      case 2:
        title = 'CookBook AI';
        break;
      case 3:
        title = 'Cart';
        break;
      case 4:
        title = 'Orders';
        break;
      case 5:
        title = 'Account';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: AppDrawer(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
