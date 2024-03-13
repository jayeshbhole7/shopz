import 'package:flutter/material.dart';
import 'package:zop/screens/map.dart';
import '../screens/admin_dashboard.dart';
import '../screens/seller_dashboard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapScreen()), // Navigate to map screen
            );
          },
          child: Text('Find Nearby Shops'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.person), // User icon
              onPressed: () {
                // Navigate to user-specific screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()), // Navigate to map screen
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.store), // Seller icon
              onPressed: () {
                // Navigate to seller-specific screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()), // Navigate to map screen
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.admin_panel_settings), // Admin icon
              onPressed: () {
                // Navigate to admin-specific screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()), // Navigate to map screen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
