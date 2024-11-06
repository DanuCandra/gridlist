import 'package:flutter/material.dart';
import 'list_horizontal.dart';
import 'list_vertical.dart';
import 'grid_view.dart';

class Utama extends StatelessWidget {
  const Utama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Menu"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pilih Tampilan List atau Grid",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              buildMenuButton(
                context,
                icon: Icons.view_list,
                text: "List View Vertical",
                gradientColors: [Colors.green, Colors.lightGreen],
                page: const List_view_Vertical(),
              ),
              const SizedBox(height: 20),
              buildMenuButton(
                context,
                icon: Icons.view_stream,
                text: "List View Horizontal",
                gradientColors: [Colors.orange, Colors.deepOrange],
                page: const List_view_horizontal(),
              ),
              const SizedBox(height: 20),
              buildMenuButton(
                context,
                icon: Icons.grid_view,
                text: "Grid View",
                gradientColors: [Colors.purple, Colors.deepPurple],
                page: const Grid_view(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuButton(
    BuildContext context, {
    required IconData icon,
    required String text,
    required List<Color> gradientColors,
    required Widget page,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: gradientColors),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 28),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(1.5, 1.5),
                    blurRadius: 2.0,
                    color: Colors.black45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
