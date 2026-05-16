import 'package:flutter/material.dart';

// প্রয়োজনীয় স্ক্রীনগুলো ইমপোর্ট
import 'soil_condition_screen.dart';
import 'weather_screen.dart';

class TopicListScreen extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> items;

  const TopicListScreen({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: items.isEmpty
          ? const Center(child: Text('কোনো আইটেম নেই।'))
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemCount: items.length,
              itemBuilder: (ctx, index) {
                final it = items[index];
                final subtitle = (it['content'] ?? it['description'] ?? '').toString();

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text(it['title'] ?? 'শিরোনাম নেই'),
                    subtitle: Text(
                      subtitle.length > 70 ? subtitle.substring(0, 70) + '...' : subtitle,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                    onTap: () {
                      final t = it['title'] ?? '';

                      // টপিকের নাম অনুযায়ী স্ক্রীনে নেভিগেশন
                      if (t == 'Soil Condition') {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const SoilConditionScreen()),
                        );
                      } else if (t == 'Weather') {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const WeatherScreen()),
                        );
                      } else {
                        // যদি কোনো নির্দিষ্ট স্ক্রীন না থাকে, DetailScreen দেখাবে
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => DetailScreen(
                              title: t,
                              content: subtitle,
                              image: null,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
    );
  }
}

// বিস্তারিত দেখানোর জন্য DetailScreen
class DetailScreen extends StatelessWidget {
  final String title;
  final String content;
  final String? image;

  const DetailScreen({
    super.key,
    required this.title,
    required this.content,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            if (image != null)
              Image.asset(image!, height: 150, fit: BoxFit.contain),
            const SizedBox(height: 16),
            Text(content, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
