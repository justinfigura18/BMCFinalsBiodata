import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  Widget infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('BIODATA'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(12),
            child: const Text(
              'PERSONAL INFORMATION',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          infoRow('Full Name', 'Justin Ancuna Figura'),
          const Divider(color: Colors.black),
          infoRow('Age', '21'),
          const Divider(color: Colors.black),
          infoRow('Birthday', 'November 28, 2004'),
          const Divider(color: Colors.black),
          infoRow('Address', 'Sabino Alley, Brgy. Maysan, Valenzuela City'),
          const Divider(color: Colors.black),
          infoRow('Contact No.', '09931625046'),
          const Divider(color: Colors.black),
          infoRow('Email', 'figurajustin@email.com'),
        ],
      ),
    );
  }
}