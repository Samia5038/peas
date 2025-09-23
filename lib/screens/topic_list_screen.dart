// import 'package:flutter/material.dart';
// import 'detail_screen.dart';

// // Tool Screens
// import 'tools/soil_checker_screen.dart';
// import 'tools/seed_checker_screen.dart';
// import 'tools/growth_guide_screen.dart';

// class TopicListScreen extends StatelessWidget {
//   final String title;
//   final List<Map<String, dynamic>> items;

//   TopicListScreen({required this.title, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: items.isEmpty
//           ? Center(child: Text('No items yet.'))
//           : ListView.separated(
//               padding: EdgeInsets.all(12),
//               itemCount: items.length,
//               separatorBuilder: (_, __) => SizedBox(height: 8),
//               itemBuilder: (ctx, i) {
//                 final it = items[i];
//                 final subtitleText = it['content'] ?? it['description'] ?? '';

//                 return Card(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12)),
//                   elevation: 3,
//                   child: ListTile(
//                     contentPadding:
//                         EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                     leading: CircleAvatar(child: Text('${i + 1}')),
//                     title: Text(it['title'] ?? it['name'] ?? ''),
//                     subtitle: Text(
//                       subtitleText.length > 70
//                           ? subtitleText.substring(0, 70) + '...'
//                           : subtitleText,
//                     ),
//                     trailing: Icon(Icons.arrow_forward_ios, size: 16),
//                     onTap: () {
//                       // Open tool screens if tool key exists
//                       if (it.containsKey('tool')) {
//                         switch (it['tool']) {
//                           case 'soil_checker':
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => SoilCheckerScreen()));
//                             break;
//                           case 'seed_checker':
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => SeedCheckerScreen()));
//                             break;
//                           case 'growth_guide':
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => GrowthGuideScreen()));
//                             break;
//                         }
//                       } else {
//                         // Open DetailScreen for content
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => DetailScreen(
//                               title: it['title'] ?? it['name'] ?? '',
//                               content: it['description'] ?? it['content'] ?? '',
//                               image: it['image'],
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'detail_screen.dart';

// class TopicListScreen extends StatelessWidget {
//   final String title;
//   final List<Map<String, dynamic>> items;

//   const TopicListScreen({super.key, required this.title, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: items.isEmpty
//           ? const Center(child: Text('No items yet.'))
//           : ListView.separated(
//               padding: const EdgeInsets.all(12),
//               separatorBuilder: (_, __) => const SizedBox(height: 8),
//               itemCount: items.length,
//               itemBuilder: (ctx, index) {
//                 final it = items[index];
//                 final subtitle = (it['content'] ?? it['description'] ?? '').toString();
//                 return Card(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                   child: ListTile(
//                     title: Text(it['title'] ?? 'Untitled'),
//                     subtitle: Text(subtitle.length > 70 ? subtitle.substring(0, 70) + '...' : subtitle),
//                     trailing: const Icon(Icons.arrow_forward_ios, size: 14),
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (_) => DetailScreen(title: it['title'] ?? '', content: subtitle, image: null),
//                       ));
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'detail_screen.dart';

// class TopicListScreen extends StatelessWidget {
//   final String title;
//   final List<Map<String, dynamic>> items;

//   const TopicListScreen({super.key, required this.title, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: items.isEmpty
//           ? const Center(child: Text('No items yet.'))
//           : ListView.separated(
//               padding: const EdgeInsets.all(12),
//               separatorBuilder: (_, __) => const SizedBox(height: 8),
//               itemCount: items.length,
//               itemBuilder: (ctx, index) {
//                 final it = items[index];

//                 // Determine title
//                 final itemTitle = it['title'] ?? it['name'] ?? 'Untitled';

//                 // Determine subtitle/content
//                 final subtitle = (it['content'] ?? it['description'] ?? '').toString();

//                 // Optional image
//                 final image = it['image'];

//                 return Card(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                   child: ListTile(
//                     title: Text(itemTitle),
//                     subtitle: Text(
//                       subtitle.length > 70 ? '${subtitle.substring(0, 70)}...' : subtitle,
//                     ),
//                     trailing: const Icon(Icons.arrow_forward_ios, size: 14),
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (_) => DetailScreen(
//                             title: itemTitle,
//                             content: subtitle,
//                             image: image, // Pass image if available, otherwise null
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'home_farmer.dart';
// import 'soil_condition_screen.dart';

// class TopicListScreen extends StatelessWidget {
//   final String title;
//   final List<Map<String, dynamic>> items;

//   const TopicListScreen({super.key, required this.title, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: items.isEmpty
//           ? const Center(child: Text('No items yet.'))
//           : ListView.separated(
//               padding: const EdgeInsets.all(12),
//               separatorBuilder: (_, __) => const SizedBox(height: 8),
//               itemCount: items.length,
//               itemBuilder: (ctx, index) {
//                 final it = items[index];
//                 final subtitle = (it['content'] ?? it['description'] ?? '').toString();
//                 return Card(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12)),
//                   child: ListTile(
//                     title: Text(it['title'] ?? 'Untitled'),
//                     subtitle: Text(subtitle.length > 70
//                         ? subtitle.substring(0, 70) + '...'
//                         : subtitle),
//                     trailing:
//                         const Icon(Icons.arrow_forward_ios, size: 14),
//                     onTap: () {
//                       final t = it['title'] ?? '';
//                       // Navigate to the correct screen based on topic title
//                       if (t == 'Soil Condition') {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (_) => const SoilConditionScreen()));
//                       } else if (t == 'Weather') {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (_) => const WeatherInputScreen()));
//                       } else if (t == 'Variation') {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (_) => VariationScreen()));
//                       } else if (t == 'Nutrition') {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (_) => NutritionScreen()));
//                       } else if (t == 'Nursing Guide') {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (_) => NursingGuideScreen()));
//                       } else {
//                         // fallback: show details
//                         Navigator.of(context).push(MaterialPageRoute(
//                           builder: (_) => DetailScreen(
//                               title: t, content: subtitle, image: null),
//                         ));
//                       }
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

// // DetailScreen remains the same
// class DetailScreen extends StatelessWidget {
//   final String title;
//   final String content;
//   final String? image;

//   const DetailScreen(
//       {super.key, required this.title, required this.content, this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             if (image != null)
//               Image.asset(image!, height: 150, fit: BoxFit.contain),
//             const SizedBox(height: 16),
//             Text(content, style: const TextStyle(fontSize: 16)),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
