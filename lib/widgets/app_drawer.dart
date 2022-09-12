import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/auth.dart';
import 'package:shop_app/screens/about_app_screen.dart';
import 'package:shop_app/screens/about_us_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';

import '../screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text("My Shop"),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text("Shop"),
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text("Orders"),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(OrdersScreen.routName),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text("Manage Products"),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(UserProductScreen.routName),
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("About the application"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutApplicationScreen(),
                    ));
              }),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.group),
              title: const Text("About the team "),
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsScreen(),
                        ))
                  }),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("LogOut"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed('/');
                Provider.of<Auth>(context, listen: false).logout();
              }),
        ],
      ),
    );
  }
}
