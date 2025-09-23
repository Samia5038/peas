// import 'package:flutter/material.dart';
// import 'topic_list_screen.dart';
// import 'auth_screen.dart';

// // Tool Screens
// import 'tools/soil_checker_screen.dart';
// import 'tools/seed_checker_screen.dart';
// import 'tools/growth_guide_screen.dart';

// class HomeFarmer extends StatelessWidget {
//   static const routeName = '/home-farmer';

//   final Map<String, dynamic> farmerContent = {
//     'Variation': [
//       {
//         'title': 'Early Smooth-Seeded Types',
//         'children': [
//           {
//             'name': 'Asauji',
//             'description':
//                 'Suitable for early sowing, dwarf, green and smooth-seeded cultivar. Flowers in 30-35 days. Pods are about 8 cm long, curved, dark green, narrow and round, fully developed pods are 7-seeded.',
//             'image': 'assets/asauji.jpeg',
//           },
//           {
//             'name': 'Lucknow Boniya',
//             'description':
//                 'Dwarf white-seeded cultivar, flowers in 40 days. Pods are borne singly, small, narrow, green, and 4-5 seeded when fully developed.',
//             'image': 'assets/Grean-Peas.jpg',
//           },
//         ],
//       },
//       {
//         'title': 'Early Wrinkled-Seeded Types',
//         'children': [
//           {
//             'name': 'Arkel',
//             'description':
//                 'Vigorous growing variety. Pods are attractive, deep green, about 8 cm long, well-filled with 7-8 seeds. Harvested in 50-55 days. Suitable for fresh vegetable and dehydration.',
//             'image': 'assets/arkel.jpeg',
//           },
//         ],
//       },
//     ],
//     'Nursing': {
//       'title': 'Nursing',
//       'children': {
//         'Weather': [
//           {
//             'title': 'Rain Patterns',
//             'content': 'How weather affects peas...',
//             'image': 'assets/rain_patterns.jpeg',
//           },
//         ],
//         'Soil': [
//           {
//             'title': 'Soil Condition Checker',
//             'tool': 'soil_checker',
//           },
//         ],
//         'Seed Quality': [
//           {
//             'title': 'Seed Quality Checker',
//             'tool': 'seed_checker',
//           },
//         ],
//         'Seed Growth': [
//           {
//             'title': 'Seed Growth Guide',
//             'tool': 'growth_guide',
//           },
//         ],
//       },
//     },
//   };

//   void _openTool(BuildContext context, String tool) {
//     switch (tool) {
//       case 'soil_checker':
//         Navigator.push(context, MaterialPageRoute(builder: (_) => SoilCheckerScreen()));
//         break;
//       case 'seed_checker':
//         Navigator.push(context, MaterialPageRoute(builder: (_) => SeedCheckerScreen()));
//         break;
//       case 'growth_guide':
//         Navigator.push(context, MaterialPageRoute(builder: (_) => GrowthGuideScreen()));
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Farmer's Guide"),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
//             },
//           ),
//         ],
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(12),
//         children: farmerContent.keys.map((section) {
//           final content = farmerContent[section];
//           return Card(
//             margin: const EdgeInsets.only(bottom: 12),
//             child: ListTile(
//               title: Text(
//                 section,
//                 style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//               trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//               onTap: () {
//                 if (section == 'Nursing') {
//                   final nursingChildren = content['children'] as Map<String, dynamic>;
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (_) => TopicListScreen(
//                         title: 'Nursing',
//                         items: nursingChildren.entries.map((entry) {
//                           final firstItem = (entry.value as List).first;

//                           if (firstItem.containsKey('tool')) {
//                             return {
//                               'title': entry.key,
//                               'content': 'Tap to open ${firstItem['title']}',
//                               'tool': firstItem['tool'],
//                             };
//                           }

//                           return {
//                             'title': entry.key,
//                             'content': firstItem['content'] ?? '',
//                             'image': firstItem['image'] ?? '',
//                           };
//                         }).toList(),
//                       ),
//                     ),
//                   );
//                 } else if (content is List) {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (_) => TopicListScreen(
//                         title: section,
//                         items: content
//                             .map<Map<String, String>>((it) => {
//                                   'title': it['title'] ?? it['name'] ?? '',
//                                   'content': it['description'] ?? it['content'] ?? '',
//                                   'image': it['image'] ?? '',
//                                 })
//                             .toList(),
//                       ),
//                     ),
//                   );
//                 }
//               },
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'auth_screen.dart';
// import 'topic_list_screen.dart';
// import 'soil_condition_screen.dart';
// import 'weather_screen.dart';

// class HomeFarmer extends StatelessWidget {
//   static const routeName = '/home-farmer';
//   const HomeFarmer({super.key});

//   final Map<String, List<Map<String, String>>> variationAndOthers = const {
//     'Variation': [
//       {'title': 'Asauji', 'content': 'Early smooth seeded variety...'},
//       {'title': 'Arkel', 'content': 'Wrinkled seeded variety...'},
//     ],
//     'Nutrition': [
//       {'title': 'Soil nutrition', 'content': 'NPK guidance...'},
//     ],
//     'Nursing Guide': [
//       {'title': 'Seed Growth', 'content': 'Step-by-step germination tips...'},
//     ],
//   };

//   @override
//   Widget build(BuildContext context) {
//     final options = [
//       {'title': 'Soil Condition', 'type': 'tool'},
//       {'title': 'Weather', 'type': 'tool'},
//       {'title': 'Variation', 'type': 'list'},
//       {'title': 'Nutrition', 'type': 'list'},
//       {'title': 'Nursing Guide', 'type': 'list'},
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Farmer Dashboard'),
//         actions: [
//           IconButton(
//             onPressed: () => Navigator.of(context).pushReplacementNamed(AuthScreen.routeName),
//             icon: const Icon(Icons.logout),
//             tooltip: 'Back to role selection',
//           )
//         ],
//       ),
//       body: ListView.separated(
//         padding: const EdgeInsets.all(12),
//         separatorBuilder: (_, __) => const SizedBox(height: 10),
//         itemCount: options.length,
//         itemBuilder: (ctx, i) {
//           final opt = options[i];
//           return Card(
//             elevation: 3,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             child: ListTile(
//               title: Text(opt['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
//               trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//               onTap: () {
//                 final t = opt['title'];
//                 if (t == 'Soil Condition') {
//                   Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SoilConditionScreen()));
//                 } else if (t == 'Weather') {
//                   Navigator.of(context).push(MaterialPageRoute(builder: (_) => const WeatherScreen()));
//                 } else {
//                   // open list for Variation, Nutrition, Nursing Guide
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (_) => TopicListScreen(
//                       title: t!,
//                       items: variationAndOthers[t]!.cast<Map<String, dynamic>>(),
//                     ),
//                   ));
//                 }
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'auth_screen.dart';
// import 'topic_list_screen.dart';
// import 'soil_condition_screen.dart';

// class HomeFarmer extends StatelessWidget {
//   static const routeName = '/home-farmer';

//   HomeFarmer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final options = [
//       {'title': 'Soil Condition', 'type': 'tool'},
//       {'title': 'Weather', 'type': 'tool'},
//       {'title': 'Variation', 'type': 'screen'},
//       {'title': 'Nutrition', 'type': 'screen'},
//       {'title': 'Nursing Guide', 'type': 'screen'},
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Farmer Dashboard'),
//         actions: [
//           IconButton(
//             onPressed: () =>
//                 Navigator.of(context).pushReplacementNamed(AuthScreen.routeName),
//             icon: const Icon(Icons.logout),
//             tooltip: 'Back to role selection',
//           )
//         ],
//       ),
//       body: ListView.separated(
//         padding: const EdgeInsets.all(12),
//         separatorBuilder: (_, __) => const SizedBox(height: 10),
//         itemCount: options.length,
//         itemBuilder: (ctx, i) {
//           final opt = options[i];
//           return Card(
//             elevation: 3,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             child: ListTile(
//               title: Text(opt['title']!,
//                   style: const TextStyle(fontWeight: FontWeight.bold)),
//               trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//               onTap: () {
//                 final t = opt['title'];
//                 if (t == 'Soil Condition') {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (_) => const SoilConditionScreen()));
//                 } else if (t == 'Weather') {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (_) => const WeatherInputScreen()));
//                 } else if (t == 'Variation') {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (_) => VariationScreen()));
//                 } else if (t == 'Nutrition') {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (_) => NutritionScreen()));
//                 } else if (t == 'Nursing Guide') {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (_) => NursingGuideScreen()));
//                 }
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// //================ Weather Input Screen =================
// class WeatherInputScreen extends StatefulWidget {
//   const WeatherInputScreen({super.key});

//   @override
//   State<WeatherInputScreen> createState() => _WeatherInputScreenState();
// }

// class _WeatherInputScreenState extends State<WeatherInputScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _tempController = TextEditingController();
//   final TextEditingController _humidityController = TextEditingController();
//   final TextEditingController _rainfallController = TextEditingController();

//   String? _result;

//   void _checkPeaSuitability() {
//     final temp = double.tryParse(_tempController.text);
//     final humidity = double.tryParse(_humidityController.text);
//     final rainfall = double.tryParse(_rainfallController.text);

//     if (temp == null || humidity == null || rainfall == null) {
//       setState(() {
//         _result = "Please enter valid numbers for all fields.";
//       });
//       return;
//     }

//     if (temp >= 10 &&
//         temp <= 25 &&
//         humidity >= 50 &&
//         humidity <= 80 &&
//         rainfall >= 50 &&
//         rainfall <= 200) {
//       setState(() {
//         _result = "The weather is suitable for growing peas.";
//       });
//     } else {
//       setState(() {
//         _result =
//             "The weather is NOT ideal for peas. Consider greenhouse or alternative crop.";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Weather Suitability"),
//         backgroundColor: Colors.blue.shade700,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _tempController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   labelText: "Temperature (°C)",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               TextFormField(
//                 controller: _humidityController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   labelText: "Humidity (%)",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               TextFormField(
//                 controller: _rainfallController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   labelText: "Rainfall (mm/month)",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _checkPeaSuitability,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green.shade700,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                 ),
//                 child: const Text("Check Suitability",
//                     style: TextStyle(fontSize: 16)),
//               ),
//               const SizedBox(height: 20),
//               if (_result != null)
//                 Text(
//                   _result!,
//                   style: const TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// //================ Variation Screen =================
// class VariationScreen extends StatelessWidget {
//   VariationScreen({super.key});

//   final List<Map<String, String>> varieties = [
//     {
//       "name": "Asauji",
//     "description": "A compact, early-sowing dwarf cultivar ideal for regions with short growing seasons. It features smooth, vibrant green seeds and begins flowering within 30-35 days. The pods are produced singly, measuring approximately 8 cm in length, with a curved shape, dark green color, and a narrow, rounded appearance. Each fully developed pod contains about 7 seeds. Asauji is well-suited for fresh consumption and home gardens due to its early maturity and manageable plant size. It thrives in well-drained soils with moderate fertility and is relatively resistant to common pea diseases.",
//     "image": "assets/asauji.jpeg"
//   },
//   {
//     "name": "Lucknow Boniya",
//     "description": "A dwarf, white-seeded cultivar known for its compact growth, making it suitable for small gardens or container planting. It flowers in approximately 40 days, producing small, narrow, green pods borne singly. Each fully developed pod contains 4-5 seeds, ideal for fresh eating or culinary use in dishes requiring delicate flavors. This variety prefers cooler climates and well-drained soils, offering moderate resistance to powdery mildew. Its quick growth cycle makes it a favorite for successive plantings in mild seasons.",
//     "image": "assets/Green-Peas.jpg"
//   },
//   {
//     "name": "Alaska",
//     "description": "An early-maturing cultivar prized for its reliability in cooler climates, flowering in about 38 days. The pods, borne singly, are light green and contain 5-6 small, tender green seeds when fully developed. Alaska is particularly valued in the canning industry due to its uniform seed size and sweet flavor. Its sturdy plants are adaptable to various soil types, though they perform best in loamy, well-drained soils. This variety is also a good choice for home gardeners seeking an early harvest with minimal maintenance.",
//     "image": "assets/alaska.jpeg"
//   },
//   {
//     "name": "Early Superb",
//     "description": "A dwarf cultivar distinguished by its attractive yellowish-green foliage, which adds ornamental value to gardens. It flowers in approximately 45 days, producing singly borne, dark green, curved pods that contain 6-7 seeds when fully developed. The pods are flavorful and tender, making them ideal for fresh consumption, steaming, or stir-frying. Early Superb is well-suited for temperate climates and can tolerate light frost, making it a versatile choice for early spring or fall planting. It prefers fertile, well-drained soils and benefits from regular watering.",
//     "image": "assets/early_superb.jpeg"
//   },
//   {
//     "name": "Arkel",
//     "description": "A vigorous, high-yielding variety known for its robust growth and adaptability. Arkel produces attractive, deep green pods approximately 8 cm long, each well-filled with 7-8 tender, sweet seeds when fully developed. Ready for harvest in 50-55 days, this cultivar is excellent for fresh market sales, home gardening, or dehydration for long-term storage. Its versatility and rich flavor make it a favorite for both raw and cooked dishes. Arkel thrives in fertile, loamy soils and requires consistent moisture for optimal pod development.",
//     "image": "assets/arkel.jpeg"
//   },
//   {
//     "name": "Bonneville",
//     "description": "A medium-tall, double-podded cultivar that offers high productivity, flowering in 55-60 days. Its light green, straight pods measure about 9 cm long and contain 6-7 seeds when fully developed. Bonneville is prized for its ability to produce two pods per node, increasing yield potential for commercial and home growers. The pods are crisp and flavorful, suitable for fresh eating, freezing, or canning. This variety performs best in cooler climates with rich, well-drained soils and is moderately resistant to fungal diseases.",
//     "image": "assets/bonneville.png"
//   },
//   {
//     "name": "T-19",
//     "description": "A medium-tall, double-podded cultivar valued for its high yield and adaptability to diverse growing conditions. Flowering in 55-60 days, it produces yellowish-green, slightly curved pods measuring 8.5 cm long, each containing 6-7 seeds when fully developed. T-19 is ideal for both fresh consumption and processing, with a sweet flavor and tender texture. It thrives in temperate climates and moderately fertile soils, requiring adequate moisture to support its vigorous growth. This variety is also known for its good resistance to common pea pests.",
//     "image": "assets/t19.jpeg"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Pea Varieties"),
//         backgroundColor: Colors.green.shade700,
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: varieties.length,
//         itemBuilder: (context, index) {
//           final variety = varieties[index];
//           return Card(
//             margin: const EdgeInsets.only(bottom: 16),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             elevation: 6,
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(variety["name"]!,
//                       style: const TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 8),
//                   Container(
//                     height: 150,
//                     width: 150,
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: Colors.grey.shade400),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: Image.asset(
//                         variety["image"]!,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(variety["description"]!,
//                       style: const TextStyle(fontSize: 16)),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// //================ Nursing Guide Screen =================
// class NursingGuideScreen extends StatelessWidget {
//   NursingGuideScreen({super.key});

//   final String nursingDescription = """
// Peas require proper care to ensure maximum yield and quality. Key guidelines include:

// 1. Soil Preparation: Ensure well-drained, fertile soil with pH 6-7.
// 2. Sowing: Sow seeds at appropriate depth (2-3 cm) and spacing.
// 3. Watering: Maintain consistent moisture but avoid waterlogging.
// 4. Weed Management: Regularly remove weeds.
// 5. Fertilization: Apply nitrogen-rich fertilizers moderately.
// 6. Pest and Disease Control: Monitor and treat aphids, mildew, fungal infections.
// 7. Support: Provide trellises for climbing varieties.
// """;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Pea Nursing Guide"),
//         backgroundColor: Colors.orange.shade700,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Text(
//           nursingDescription,
//           style: const TextStyle(fontSize: 16, height: 1.5),
//         ),
//       ),
//     );
//   }
// }

// //================ Nutrition Screen =================
// class NutritionScreen extends StatelessWidget {
//   NutritionScreen({super.key});

//   final String nutritionDescription = """
// Peas are rich in nutrients and offer several health benefits:

// 1. Proteins: Excellent plant-based protein.
// 2. Vitamins: Rich in A, C, K, B-complex vitamins.
// 3. Minerals: Contains potassium, magnesium, phosphorus, iron.
// 4. Dietary Fiber: Supports digestion.
// 5. Antioxidants: Flavonoids & carotenoids prevent oxidative stress.
// 6. Low Fat: Low in calories.
// 7. Culinary Uses: Fresh, frozen, canned peas in soups, salads, curries.
// """;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Pea Nutrition"),
//         backgroundColor: Colors.brown.shade700,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Text(
//           nutritionDescription,
//           style: const TextStyle(fontSize: 16, height: 1.5),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'topic_list_screen.dart';
import 'soil_condition_screen.dart';
import 'intro_screen.dart'; // লগআউটের জন্য

class HomeFarmer extends StatelessWidget {
  static const routeName = '/home-farmer'; // Route name যুক্ত

  HomeFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      {'title': 'মাটির অবস্থা', 'type': 'tool'},
      {'title': 'আবহাওয়া', 'type': 'tool'},
      {'title': 'বৈচিত্র্য', 'type': 'screen'},
      {'title': 'পুষ্টিগুণ', 'type': 'screen'},
      {'title': 'চাষের নির্দেশিকা', 'type': 'screen'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('কৃষকের ড্যাশবোর্ড'),
        actions: [
          IconButton(
            onPressed: () {
              // IntroScreen এর routeName ব্যবহার
              Navigator.of(context)
                  .pushReplacementNamed(IntroScreen.routeName);
            },
            icon: const Icon(Icons.logout),
            tooltip: 'ভূমিকা নির্বাচনে ফিরে যান',
          )
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemCount: options.length,
        itemBuilder: (ctx, i) {
          final opt = options[i];
          return Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text(opt['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                final t = opt['title'];
                if (t == 'মাটির অবস্থা') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const SoilConditionScreen()));
                } else if (t == 'আবহাওয়া') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const WeatherInputScreen()));
                } else if (t == 'বৈচিত্র্য') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => VariationScreen()));
                } else if (t == 'পুষ্টিগুণ') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NutritionScreen()));
                } else if (t == 'চাষের নির্দেশিকা') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => NursingGuideScreen()));
                }
              },
            ),
          );
        },
      ),
    );
  }
}

//================ আবহাওয়া ইনপুট স্ক্রিন =================
class WeatherInputScreen extends StatefulWidget {
  const WeatherInputScreen({super.key});

  @override
  State<WeatherInputScreen> createState() => _WeatherInputScreenState();
}

class _WeatherInputScreenState extends State<WeatherInputScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _tempController = TextEditingController();
  final TextEditingController _humidityController = TextEditingController();
  final TextEditingController _rainfallController = TextEditingController();

  String? _result;

  void _checkPeaSuitability() {
    final temp = double.tryParse(_tempController.text);
    final humidity = double.tryParse(_humidityController.text);
    final rainfall = double.tryParse(_rainfallController.text);

    if (temp == null || humidity == null || rainfall == null) {
      setState(() {
        _result = "সব ঘরে সঠিক সংখ্যা দিন।";
      });
      return;
    }

    if (temp >= 10 &&
        temp <= 25 &&
        humidity >= 50 &&
        humidity <= 80 &&
        rainfall >= 50 &&
        rainfall <= 200) {
      setState(() {
        _result = "এখনকার আবহাওয়া মটরশুঁটি চাষের জন্য উপযুক্ত।";
      });
    } else {
      setState(() {
        _result =
            "এই আবহাওয়া মটরশুঁটির জন্য উপযুক্ত নয়। বিকল্প ফসল বা গ্রীনহাউজ বিবেচনা করুন।";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("আবহাওয়ার উপযুক্ততা"),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _tempController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "তাপমাত্রা (°C)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _humidityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "আর্দ্রতা (%)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _rainfallController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "বৃষ্টিপাত (মিমি/মাস)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _checkPeaSuitability,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                child: const Text("পরীক্ষা করুন",
                    style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 20),
              if (_result != null)
                Text(
                  _result!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

//================ বৈচিত্র্য স্ক্রিন =================
class VariationScreen extends StatelessWidget {
  VariationScreen({super.key});

  final List<Map<String, String>> varieties = [
    {
      "name": "অসৌজি",
    "description": "একটি কমপ্যাক্ট, প্রথমে বপনযোগ্য বামন প্রজাতি যা ছোট গ্রোইং সিজনের অঞ্চলের জন্য উপযোগী। এটিতে মসৃণ, উজ্জ্বল সবুজ বীজ রয়েছে এবং ৩০-৩৫ দিনের মধ্যে ফুল ফোটে। পadগুলো এককভাবে উৎপাদিত হয়, প্রায় ৮ সে.মি. লম্বা, বক্র আকৃতি, গাঢ় সবুজ রঙ এবং সংকীর্ণ, গোলাকার চেহারা রয়েছে। প্রতিটি পূর্ণাঙ্গ পod-এ প্রায় ৭টি বীজ থাকে। অসৌজি তাজা ভোজনে এবং বাড়ির বাগানের জন্য উপযোগী, কারণ এর প্রাথমিক পরিপক্কতা এবং পরিচালনযোগ্য পौধার আকার। এটি ভাল নিষ্কাশনযোগ্য মাটিতে এবং মাঝারি উর্বরতায় সফল হয় এবং সাধারণ মটরশুটি রোগের প্রতি মাঝারি প্রতিরোধ ক্ষমতা রয়েছে।",
    "image": "assets/asauji.jpeg"
  },
  {
    "name": "লখনউ বোনিয়া",
    "description": "একটি বামন, সাদা বীজযুক্ত প্রজাতি যা তার কমপ্যাক্ট বৃদ্ধির জন্য পরিচিত, যা ছোট বাগান বা কন্টেইনার প্ল্যান্টিং-এর জন্য উপযোগী। এটি প্রায় ৪০ দিনে ফুল ফোটে, যা ছোট, সংকীর্ণ, সবুজ পad এককভাবে উৎপাদন করে। প্রতিটি পূর্ণাঙ্গ পod-এ ৪-৫টি বীজ থাকে, যা তাজা খাওয়ার বা সূক্ষ্ম স্বাদের খাবারে ব্যবহারের জন্য আদর্শ। এই প্রজাতি শীতল আবহাওয়া এবং ভাল নিষ্কাশনযোগ্য মাটি পছন্দ করে, পাউডারি মিলডিউ-এর প্রতি মাঝারি প্রতিরোধ ক্ষমতা প্রদান করে। এর দ্রুত বৃদ্ধি চক্র এটিকে মৃদু ঋতুতে পরিবর্তনশীল বপনের জন্য প্রিয় করে তুলেছে।",
    "image": "assets/Green-Peas.jpg"
  },
  {
    "name": "আলাস্কা",
    "description": "একটি প্রাথমিক পরিপক্ক প্রজাতি যা শীতল আবহাওয়ায় নির্ভরযোগ্যতার জন্য বিখ্যাত, প্রায় ৩৮ দিনে ফুল ফোটে। পadগুলো এককভাবে উৎপাদিত হয়, হালকা সবুজ রঙ এবং পূর্ণাঙ্গ অবস্থায় ৫-৬টি ছোট, নরম সবুজ বীজ ধারণ করে। আলাস্কা ক্যানিং শিল্পে বিশেষভাবে মূল্যবান কারণ এর সামঞ্জস্যপূর্ণ বীজের আকার এবং মিষ্টি স্বাদ। এর স্থিতিশীল পौধা বিভিন্ন মাটির প্রকারে অভিযোজিত, যদিও এটি লোমী, ভাল নিষ্কাশনযোগ্য মাটিতে সর্বোত্তম কাজ করে। এই প্রজাতি প্রাথমিক ফসলের জন্য কম রক্ষণাবেক্ষণের সাথে বাড়ির বাগানিকদের জন্যও একটি ভাল পছন্দ।",
    "image": "assets/alaska.jpeg"
  },
  {
    "name": "আর্লি সুপার্ব",
    "description": "একটি বামন প্রজাতি যা তার আকর্ষণীয় হলদে-সবুজ পাতায় পৃথক, যা বাগানে সজ্জার মূল্য যোগ করে। এটি প্রায় ৪৫ দিনে ফুল ফোটে, যা এককভাবে উৎপাদিত, গাঢ় সবুজ, বক্র পad ধারণ করে যা পূর্ণাঙ্গ অবস্থায় ৬-৭টি বীজ ধারণ করে। পadগুলো সুস্বাদু এবং নরম, যা তাজা ভোজন, স্টিমিং বা স্টির-ফ্রাইং-এর জন্য আদর্শ। আর্লি সুপার্ব মধ্যম আবহাওয়ার জন্য উপযোগী এবং হালকা হিমশীতল সহ্য করতে পারে, যা এটিকে প্রথম বসন্ত বা শরৎকালীন বপনের জন্য বহুমুখী পছন্দ করে তোলে। এটি উর্বর, ভাল নিষ্কাশনযোগ্য মাটি পছন্দ করে এবং নিয়মিত সেচ থেকে উপকৃত হয়।",
    "image": "assets/early_superb.jpeg"
  },
  {
    "name": "আর্কেল",
    "description": "একটি জোরালো, উচ্চ ফলনযোগ্য প্রজাতি যা তার সুষ্ঠু বৃদ্ধি এবং অভিযোজন ক্ষমতার জন্য পরিচিত। আর্কেল আকর্ষণীয়, গাঢ় সবুজ পad প্রায় ৮ সে.মি. লম্বা উৎপাদন করে, যেগুলো প্রতিটি পূর্ণাঙ্গ অবস্থায় ৭-৮টি নরম, মিষ্টি বীজ দিয়ে ভরা থাকে। ৫০-৫৫ দিনে কাটার জন্য প্রস্তুত, এই প্রজাতি তাজা বাজার বিক্রয়, বাড়ির বাগান, বা দীর্ঘমেয়াদী সংরক্ষণের জন্য ডিহাইড্রেশনের জন্য শ্রেষ্ঠ। এর বহুমুখীত্ব এবং গভীর স্বাদ এটিকে কাঁচা এবং রান্না করা খাবার উভয়ের জন্য প্রিয় করে তুলেছে। আর্কেল উর্বর, লোমী মাটিতে সফল হয় এবং পod উন্নয়নের জন্য সামঞ্জস্যপূর্ণ আর্দ্রতা প্রয়োজন।",
    "image": "assets/arkel.jpeg"
  },
  {
    "name": "বোনেভিল",
    "description": "একটি মাঝারি উচ্চ, দ্বিগুণ পad-যুক্ত প্রজাতি যা উচ্চ উৎপাদনশীলতা প্রদান করে, ৫৫-৬০ দিনে ফুল ফোটে। এর হালকা সবুজ, সরল পad প্রায় ৯ সে.মি. লম্বা এবং পূর্ণাঙ্গ অবস্থায় ৬-৭টি বীজ ধারণ করে। বোনেভিল তার প্রতি নোডে দুটি পad উৎপাদন করার ক্ষমতার জন্য বিখ্যাত, যা বাণিজ্যিক এবং বাড়ির চাষিদের জন্য ফলনের সম্ভাবনা বাড়ায়। পadগুলো কড়া এবং সুস্বাদু, তাজা খাওয়া, ফ্রিজিং বা ক্যানিং-এর জন্য উপযোগী। এই প্রজাতি শীতল আবহাওয়ায় এবং সমৃদ্ধ, ভাল নিষ্কাশনযোগ্য মাটিতে সর্বোত্তম কাজ করে এবং ফঙ্গাস রোগের প্রতি মাঝারি প্রতিরোধ ক্ষমতা রয়েছে।",
    "image": "assets/bonneville.png"
  },
  {
    "name": "টি-১৯",
    "description": "একটি মাঝারি উচ্চ, দ্বিগুণ পad-যুক্ত প্রজাতি যা তার উচ্চ ফলন এবং বিভিন্ন গ্রোইং পরিস্থিতিতে অভিযোজন ক্ষমতার জন্য মূল্যবান। ৫৫-৬০ দিনে ফুল ফোটে, এটি হলদে-সবুজ, কিছুটা বক্র পad উৎপাদন করে যা ৮.৫ সে.মি. লম্বা এবং প্রতিটি পূর্ণাঙ্গ অবস্থায় ৬-৭টি বীজ ধারণ করে। টি-১৯ তাজা ভোজন এবং প্রক্রিয়াকরণ উভয়ের জন্য আদর্শ, যার মিষ্টি স্বাদ এবং নরম টেক্সচার রয়েছে। এটি মধ্যম আবহাওয়ায় এবং মাঝারি উর্বর মাটিতে সফল হয়, যা এর জোরালো বৃদ্ধিকে সমর্থন করতে পর্যাপ্ত আর্দ্রতা প্রয়োজন। এই প্রজাতি সাধারণ মটরশুটি কীটের প্রতি ভাল প্রতিরোধ ক্ষমতা দিয়ে পরিচিত।",
    "image": "assets/t19.jpeg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("মটরশুঁটির জাতসমূহ"),
        backgroundColor: Colors.green.shade700,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: varieties.length,
        itemBuilder: (context, index) {
          final variety = varieties[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(variety["name"]!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        variety["image"]!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(variety["description"]!,
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//================ চাষের নির্দেশিকা স্ক্রিন =================
class NursingGuideScreen extends StatelessWidget {
  NursingGuideScreen({super.key});

  final String nursingDescription = """
মটরশুঁটির সঠিক পরিচর্যা দরকার যাতে সর্বোচ্চ ফলন পাওয়া যায়। নির্দেশিকা:

১. মাটির প্রস্তুতি: pH ৬-৭ সহ উর্বর, পানি নিষ্কাশনযোগ্য মাটি।
২. বপন: ২-৩ সেমি গভীরতায় বপন করুন।
৩. সেচ: নিয়মিত পানি দিন তবে পানি জমে না থাকে।
৪. আগাছা দমন: নিয়মিত আগাছা পরিষ্কার করুন।
৫. সার: সামান্য নাইট্রোজেন সার ব্যবহার করুন।
৬. রোগ-বালাই নিয়ন্ত্রণ: এফিড, ছত্রাক নজরে রাখুন।
৭. সহায়তা: লতানো জাতের জন্য মাচা দিন।
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("চাষের নির্দেশিকা"),
        backgroundColor: Colors.orange.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Text(
          nursingDescription,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ),
    );
  }
}

//================ পুষ্টিগুণ স্ক্রিন =================
class NutritionScreen extends StatelessWidget {
  NutritionScreen({super.key});

  final String nutritionDescription = """
মটরশুঁটির পুষ্টিগুণ:

১. প্রোটিন: উদ্ভিদজাত প্রোটিনের ভালো উৎস।
২. ভিটামিন: ভিটামিন A, C, K এবং B-কমপ্লেক্স সমৃদ্ধ।
৩. খনিজ: পটাশিয়াম, ম্যাগনেসিয়াম, ফসফরাস, আয়রন আছে।
৪. আঁশ: হজমে সাহায্য করে।
৫. অ্যান্টিঅক্সিডেন্ট: ফ্লাভোনয়েড ও ক্যারোটিনয়েড।
৬. কম চর্বি: ক্যালোরি কম।
৭. রান্নার ব্যবহার: স্যুপ, সালাদ, তরকারি ইত্যাদিতে ব্যবহার করা হয়।
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("পুষ্টিগুণ"),
        backgroundColor: Colors.brown.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Text(
          nutritionDescription,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ),
    );
  }
}
