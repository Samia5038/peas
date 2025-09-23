import 'package:flutter/material.dart';

class GrowthGuideScreen extends StatelessWidget {
  final List<Map<String, String>> guideSteps = [
    {
      'title': 'Step 1: Seed Preparation',
      'desc': 'Choose healthy seeds. Treat them with fungicide before sowing.'
    },
    {
      'title': 'Step 2: Sowing',
      'desc': 'Sow seeds 3–5 cm deep in well-prepared soil, spacing 30 cm between rows.'
    },
    {
      'title': 'Step 3: Germination',
      'desc': 'Seeds germinate in 7–10 days. Keep soil moist but not waterlogged.'
    },
    {
      'title': 'Step 4: Vegetative Growth',
      'desc': 'Provide support with sticks/trellis. Apply fertilizer as recommended.'
    },
    {
      'title': 'Step 5: Flowering',
      'desc': 'Occurs 30–40 days after sowing. Ensure good irrigation during this stage.'
    },
    {
      'title': 'Step 6: Pod Development',
      'desc': 'Pods appear after flowers. Regular irrigation ensures healthy pods.'
    },
    {
      'title': 'Step 7: Harvesting',
      'desc': 'Harvest green pods 60–70 days after sowing when tender.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seed Growth Guide')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: guideSteps.length,
        itemBuilder: (ctx, i) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(guideSteps[i]['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(guideSteps[i]['desc']!),
            ),
          );
        },
      ),
    );
  }
}
