import 'package:flutter/material.dart';

class Grid_view extends StatelessWidget {
  const Grid_view({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'icon': Icons.home, 'color': Colors.blue, 'label': "Home"},
      {'icon': Icons.phone, 'color': Colors.red, 'label': "Phone"},
      {'icon': Icons.school, 'color': Colors.yellow, 'label': "School"},
      {'icon': Icons.work, 'color': Colors.green, 'label': "Work"},
      {'icon': Icons.shopping_cart, 'color': Colors.purple, 'label': "Shop"},
      {'icon': Icons.local_cafe, 'color': Colors.brown, 'label': "Cafe"},
      {'icon': Icons.directions_bus, 'color': Colors.indigo, 'label': "Bus"},
      {'icon': Icons.beach_access, 'color': Colors.teal, 'label': "Beach"},
      {'icon': Icons.hotel, 'color': Colors.pink, 'label': "Hotel"},
      {
        'icon': Icons.local_hospital,
        'color': Colors.redAccent,
        'label': "Hospital"
      },
      {'icon': Icons.library_books, 'color': Colors.cyan, 'label': "Library"},
      {'icon': Icons.flight, 'color': Colors.amber, 'label': "Airport"},
      {
        'icon': Icons.restaurant,
        'color': Colors.orangeAccent,
        'label': "Restaurant"
      },
      {
        'icon': Icons.fitness_center,
        'color': Colors.deepPurple,
        'label': "Gym"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              decoration: BoxDecoration(
                color: item['color'],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon'], color: Colors.white, size: 50),
                  const SizedBox(height: 10),
                  Text(
                    item['label'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
