import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

   // initialize a index 
  int _selectedIndex = 0; 
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Row( 
        children: <Widget>[ 
          // create a navigation rail 
          NavigationRail( 
            selectedIndex: _selectedIndex, 
            onDestinationSelected: (int index) { 
              setState(() { 
                _selectedIndex = index; 
              }); 
            }, 
            indicatorColor: Colors.blueGrey,
           labelType: NavigationRailLabelType.none, 
            backgroundColor: Colors.blueGrey, 
            destinations: const <NavigationRailDestination> 

            [ 
              // navigation destinations 
              NavigationRailDestination( 
                icon: Icon(Icons.favorite_border), 
                selectedIcon: Icon(Icons.favorite), 
                label: Text('Wishlist' , 
                ),
                
                
              ), 
              NavigationRailDestination( 
                icon: Icon(Icons.person_outline_rounded), 
                selectedIcon: Icon(Icons.person), 
                label: Text('Account'), 
              ), 
              NavigationRailDestination( 
                icon: Icon(Icons.shopping_cart_outlined), 
                selectedIcon: Icon(Icons.shopping_cart), 
                label: Text('Cart'), 
              ), 
            ], 
            selectedIconTheme: const IconThemeData(color: Colors.white), 
            unselectedIconTheme: const IconThemeData(color: Colors.black), 
            selectedLabelTextStyle: const TextStyle(color: Colors.white), 
          ), 
          // const VerticalDivider(thickness: 1, width: 1), 
          Expanded( 
            child: Container(
              color: Colors.black,
              child: Center( 
                child: Text('Page Number: $_selectedIndex'), 
              ),
            ), 
          ) 
        ], 
      ), 
    );
  }
}