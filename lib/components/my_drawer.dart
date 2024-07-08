import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/components/my_drawer_tile.dart';
import 'package:restaurant_app_flutter/pages/settings_page.dart';
import 'package:restaurant_app_flutter/pages/login_page.dart';
import 'package:smartech_base/smartech_base.dart';
import 'package:restaurant_app_flutter/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(context) {
    Smartech().logoutAndClearUserIdentity(false);
    final authService = AuthService();
    authService.signOut();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage(onTap: null)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            MyDrawerTile(
                text: "H O M E",
                icon: Icons.home,
                onTap: () => Navigator.pop(context)),
            MyDrawerTile(
                text: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                }),
            const Spacer(),
            MyDrawerTile(
                text: "L O G O U T",
                icon: Icons.logout,
                onTap: () {
                  logout(context);
                }),
            SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}
