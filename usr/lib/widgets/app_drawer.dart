import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const AppDrawer({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'The Earth’s Essence',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.store,
            text: 'Store',
            index: 0,
            context: context,
          ),
          _createDrawerItem(
            icon: Icons.restaurant_menu,
            text: 'Balanced Bites AI',
            index: 1,
            context: context,
          ),
          _createDrawerItem(
            icon: Icons.menu_book,
            text: 'CookBook AI',
            index: 2,
            context: context,
          ),
          const Divider(),
          _createDrawerItem(
            icon: Icons.shopping_cart,
            text: 'Cart',
            index: 3,
            context: context,
          ),
          _createDrawerItem(
            icon: Icons.receipt,
            text: 'Orders',
            index: 4,
            context: context,
          ),
          _createDrawerItem(
            icon: Icons.account_circle,
            text: 'Account',
            index: 5,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required int index,
    required BuildContext context,
  }) {
    final isSelected = selectedIndex == index;
    return ListTile(
      leading: Icon(icon, color: isSelected ? Theme.of(context).primaryColor : null),
      title: Text(
        text,
        style: TextStyle(
          color: isSelected ? Theme.of(context).primaryColor : null,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: isSelected,
      onTap: () => onItemTapped(index),
    );
  }
}
