import 'package:flutter/material.dart';

class List_view_horizontal extends StatelessWidget {
  const List_view_horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal List View"),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          buildHorizontalItem(Icons.home, Colors.blue, "Home"),
          buildHorizontalItem(Icons.phone, Colors.red, "Phone"),
          buildHorizontalItem(Icons.school, Colors.yellow, "School"),
          buildHorizontalItem(Icons.work, Colors.green, "Work"),
          buildHorizontalItem(Icons.shopping_cart, Colors.purple, "Shop"),
          buildHorizontalItem(Icons.local_cafe, Colors.brown, "Cafe"),
          buildHorizontalItem(Icons.directions_bus, Colors.indigo, "Bus"),
          buildHorizontalItem(Icons.beach_access, Colors.teal, "Beach"),
          buildHorizontalItem(Icons.hotel, Colors.pink, "Hotel"),
          buildHorizontalItem(
              Icons.local_hospital, Colors.redAccent, "Hospital"),
          buildHorizontalItem(Icons.library_books, Colors.cyan, "Library"),
          buildHorizontalItem(Icons.flight, Colors.amber, "Airport"),
          buildHorizontalItem(
              Icons.restaurant, Colors.orangeAccent, "Restaurant"),
          buildHorizontalItem(Icons.fitness_center, Colors.deepPurple, "Gym"),
        ],
      ),
    );
  }

  Widget buildHorizontalItem(IconData icon, Color color, String label) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 50),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
