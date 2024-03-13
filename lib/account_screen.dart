import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AccountPage(),
    const ProfilePage(),
    const SettingsPage(),
    const HelpPage(),
    const LogoutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          //navigation rail
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: NavigationRail(
              leading: const Text('Settings'),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              extended: true,
              indicatorColor: Colors.white,
              destinations: const <NavigationRailDestination>[
                // navigation destinations
                NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('Account'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person_outline_rounded),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Profile'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  selectedIcon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.help_outline),
                  selectedIcon: Icon(Icons.help),
                  label: Text('Help'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.logout),
                  selectedIcon: Icon(Icons.logout),
                  label: Text('Logout'),
                ),
              ],
              selectedIconTheme: const IconThemeData(color: Colors.blue),
              unselectedIconTheme: const IconThemeData(color: Colors.black),
              selectedLabelTextStyle: const TextStyle(color: Colors.blue),
            ),
          ),
          Expanded(
            child: _pages[_selectedIndex],
          )
        ],
      ),
    );
  }
}

// Separate pages for each menu item
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Account Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Page'),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: const Center(
        child: Text('Settings Page'),
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: const Center(
        child: Text('Help Page'),
      ),
    );
  }
}

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Logout Page'),
    );
  }
}