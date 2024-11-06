import 'package:flutter/material.dart';

class List_view_Vertical extends StatelessWidget {
  const List_view_Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'icon': Icons.home, 'title': "Rumah"},
      {'icon': Icons.phone, 'title': "No HP"},
      {'icon': Icons.school, 'title': "Sekolah"},
      {'icon': Icons.location_city, 'title': "Alamat"},
      {'icon': Icons.email, 'title': "Email"},
      {'icon': Icons.work, 'title': "Kantor"},
      {'icon': Icons.local_hospital, 'title': "Rumah Sakit"},
      {'icon': Icons.directions_car, 'title': "Transportasi"},
      {'icon': Icons.local_cafe, 'title': "Cafe"},
      {'icon': Icons.library_books, 'title': "Perpustakaan"},
      {'icon': Icons.shopping_cart, 'title': "Shopping"},
      {'icon': Icons.flight, 'title': "Airport"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vertical List View"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return buildListTile(item['icon'], item['title']);
        },
      ),
    );
  }

  Widget buildListTile(IconData icon, String title) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent, size: 30),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
        },
      ),
    );
  }
}
