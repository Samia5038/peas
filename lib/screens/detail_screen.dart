import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String content;
  final String? image;

  const DetailScreen({super.key, required this.title, required this.content, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (image != null && image!.isNotEmpty)
            ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(image!)),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(content, style: const TextStyle(fontSize: 16, height: 1.4)),
        ]),
      ),
    );
  }
}
