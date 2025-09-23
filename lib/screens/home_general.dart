

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'topic_list_screen.dart';
// import 'auth_screen.dart';
// import '../providers/auth_provider.dart';


// class HomeGeneral extends StatelessWidget {
//   static const routeName = '/home-general';

//   final Map<String, List<Map<String, String>>> content = {
//     'Variation': [
//       {'title': 'Pea Variety A', 'content': 'Short description of Variety A...'},
//       {'title': 'Pea Variety B', 'content': 'Short description of Variety B...'},
//     ],
//     'Nutrition': [
//       {'title': 'Soil nutrition', 'content': 'Use balanced NPK, compost...'},
//       {'title': 'Fertilizer schedule', 'content': 'Apply fertilizer at key growth stages...'},
//     ],
//     'Nursing': [
//       {'title': 'Watering', 'content': 'Peas need consistent moisture...'},
//       {'title': 'Pest management', 'content': 'Monitor for aphids, use companion planting...'},
//     ],
//   };

//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<AuthProvider>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('General User - PeasCare'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () {
//               auth.logout();
//               Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
//             },
//           )
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(12),
//         child: GridView.builder(
//           itemCount: content.keys.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, childAspectRatio: 3/4, crossAxisSpacing: 12, mainAxisSpacing: 12),
//           itemBuilder: (ctx, i) {
//             final k = content.keys.elementAt(i);
//             return InkWell(
//               onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => TopicListScreen(title: k, items: content[k]!))),
//               child: Card(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
//                 elevation: 4,
//                 child: Padding(
//                   padding: EdgeInsets.all(14),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Icon(
//                         k=='Variation' ? Icons.eco : k=='Nutrition' ? Icons.restaurant : Icons.healing,
//                         size: 42, color: Colors.green[700],
//                       ),
//                       SizedBox(height: 12),
//                       Text(k, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//                       SizedBox(height: 8),
//                       Expanded(child: Text('Tap to see tips about $k for peas.', style: TextStyle(color: Colors.grey[700]))),
//                       Align(alignment: Alignment.bottomRight, child: Icon(Icons.arrow_forward_ios, size: 16)),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'topic_list_screen.dart';
// import 'detail_screen.dart';
// import 'auth_screen.dart';

// class HomeGeneral extends StatelessWidget {
//   static const routeName = '/home-general';
//   const HomeGeneral({super.key});

//   // sample content for general users
//   final Map<String, List<Map<String, String>>> content = const {
//     'Variation': [
//       {'title': 'Pea Variety A', 'content': 'Short description of Variety A...'},
//       {'title': 'Pea Variety B', 'content': 'Short description of Variety B...'},
//     ],
//     'Nutrition': [
//       {'title': 'Soil nutrition', 'content': 'Use balanced NPK, compost...'},
//       {'title': 'Fertilizer schedule', 'content': 'Apply fertilizer at key growth stages...'},
//     ],
//     'Nursing Guide': [
//       {'title': 'Watering', 'content': 'Peas need consistent moisture...'},
//       {'title': 'Pest management', 'content': 'Monitor for aphids, use companion planting...'},
//     ],
//   };

//   @override
//   Widget build(BuildContext context) {
//     final keys = content.keys.toList();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('General User'),
//         actions: [
//           IconButton(
//             onPressed: () => Navigator.of(context).pushReplacementNamed(AuthScreen.routeName),
//             icon: const Icon(Icons.logout),
//             tooltip: 'Back to role selection',
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: GridView.builder(
//           itemCount: keys.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3 / 4),
//           itemBuilder: (ctx, i) {
//             final k = keys[i];
//             return Card(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//               elevation: 4,
//               child: InkWell(
//                 onTap: () {
//                   // open topic list
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (_) => TopicListScreen(title: k, items: content[k]!.cast<Map<String, dynamic>>()),
//                   ));
//                 },
//                 borderRadius: BorderRadius.circular(12),
//                 child: Padding(
//                   padding: const EdgeInsets.all(14.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Icon(k == 'Variation' ? Icons.eco : k == 'Nutrition' ? Icons.restaurant : Icons.healing,
//                           size: 44, color: Colors.green[700]),
//                       const SizedBox(height: 12),
//                       Text(k, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                       const SizedBox(height: 8),
//                       Text('Tap to see tips about $k for peas.', style: TextStyle(color: Colors.grey[700])),
//                       const Spacer(),
//                       Align(alignment: Alignment.bottomRight, child: Icon(Icons.arrow_forward_ios, size: 16))
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class HomeGeneral extends StatelessWidget {
//   static const routeName = '/home-general';

//   // Removed const for hot reload safety
//   HomeGeneral({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("General User Dashboard"),
//         backgroundColor: Colors.green.shade700,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Variation Card
//             buildDashboardCard(
//               title: "Variation",
//               description:
//                   "Add your variation description here. You can explain different pea varieties, their growth patterns, and tips for selection.",
//               imagePath: "assets/images/variation.png", // replace with your image
//               color: Colors.green.shade400,
//               onTap: () {
//                 // Action when tapped (navigate or show details)
//               },
//             ),
//             const SizedBox(height: 20),

//             // Nursing Guide Card
//             buildDashboardCard(
//               title: "Nursing Guide",
//               description:
//                   "Add your nursing guide description here. Include details on plant care, watering schedules, and soil maintenance.",
//               imagePath: "assets/images/nursing.png", // replace with your image
//               color: Colors.orange.shade400,
//               onTap: () {
//                 // Action when tapped
//               },
//             ),
//             const SizedBox(height: 20),

//             // Nutrition Card
//             buildDashboardCard(
//               title: "Nutrition",
//               description:
//                   "Add your nutrition description here. Describe nutritional benefits of peas and how they contribute to a healthy diet.",
//               imagePath: "assets/images/nutrition.png", // replace with your image
//               color: Colors.brown.shade400,
//               onTap: () {
//                 // Action when tapped
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Dashboard card builder
//   Widget buildDashboardCard({
//     required String title,
//     required String description,
//     required String imagePath,
//     required Color color,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         elevation: 8,
//         shadowColor: color.withOpacity(0.5),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//               colors: [color.withOpacity(0.7), color],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           padding: const EdgeInsets.all(20),
//           child: Row(
//             children: [
//               // Image
//               Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(imagePath),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//               ),
//               const SizedBox(width: 20),

//               // Title + Description
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       description,
//                       style: const TextStyle(
//                         color: Colors.white70,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const Icon(
//                 Icons.arrow_forward_ios,
//                 color: Colors.white70,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class HomeGeneral extends StatelessWidget {
//   static const routeName = '/home-general';

//   HomeGeneral({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("General User Dashboard"),
//         backgroundColor: Colors.green.shade700,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Variation Card
//             buildDashboardCard(
//               context: context,
//               title: "Variation",
//               description: "Explore different pea varieties and their characteristics.",
//               color: Colors.green.shade400,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => VariationScreen()),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),

//             // Nursing Guide Card
//             buildDashboardCard(
//               context: context,
//               title: "Nursing Guide",
//               description: "Learn how to care for your pea crops professionally.",
//               color: Colors.orange.shade400,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => NursingGuideScreen()),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),

//             // Nutrition Card
//             buildDashboardCard(
//               context: context,
//               title: "Nutrition",
//               description: "Understand nutritional benefits of peas.",
//               color: Colors.brown.shade400,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => NutritionScreen()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildDashboardCard({
//     required BuildContext context,
//     required String title,
//     required String description,
//     required Color color,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         elevation: 8,
//         shadowColor: color.withOpacity(0.5),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//               colors: [color.withOpacity(0.7), color],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           padding: const EdgeInsets.all(20),
//           child: Row(
//             children: [
//               // Placeholder for icon
//               Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   color: Colors.white24,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.book, color: Colors.white, size: 40),
//               ),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(title,
//                         style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 8),
//                     Text(description,
//                         style:
//                             const TextStyle(color: Colors.white70, fontSize: 16)),
//                   ],
//                 ),
//               ),
//               const Icon(Icons.arrow_forward_ios, color: Colors.white70),
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
//       "description":
//           "Suitable for early sowing, dwarf, green and smooth-seeded cultivar and flowers in 30-35 days. Pods are produced singly, about 8 cm long, curved, dark green, narrow and appear round, fully developed pods are 7-seeded.",
//       "image": "assets/asauji.jpeg"
//     },
//     {
//       "name": "Lucknow Boniya",
//       "description":
//           "Dwarf white-seeded cultivar, flowers in 40 days. Pods are borne singly, small, narrow, green, and 4-5 seeded when fully developed.",
//       "image": "assets/images/Green-Peas.jpg"
//     },
//     {
//       "name": "Alaska",
//       "description":
//           "Early growing cultivar, flowers in 38 days. Pods are borne singly, light green in colour and contain 5-6 small green seeds when fully developed. Suitable for canning purpose.",
//       "image": "assets/alaska.jpeg"
//     },
//     {
//       "name": "Early Superb",
//       "description":
//           "Dwarf cultivar with yellowish green foliage and flowers in about 45 days. Pods are borne singly, dark green and curved with 6-7 seeds when fully developed.",
//       "image": "assets/early_superb.jpeg"
//     },
//     {
//       "name": "Arkel",
//       "description":
//           "Vigorous growing variety, pods are attractive, deep green, about 8 cm long, well filled with 7-8 seeds when fully developed. Suitable as fresh vegetable and for dehydration. Pods are harvested in 50-55 days.",
//       "image": "assets/arkel.jpeg"
//     },
//     {
//       "name": "Bonneville",
//       "description":
//           "Double-podded cultivar, plants medium-tall, flowers in 55-60 days. Pods are light green, straight, about 9 cm long and 6-7 seeded when fully developed.",
//       "image": "assets/images/bonneville.png"
//     },
//     {
//       "name": "T-19",
//       "description":
//           "Double-podded cultivar, medium-tall, flowers in 55-60 days. Pods are yellowish green, slightly curved, 8.5 cm long and 6-7 seeded when fully developed.",
//       "image": "assets/images/t19.jpeg"
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
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade300,
//                       borderRadius: BorderRadius.circular(12),
//                       image: DecorationImage(
//                         image: AssetImage(variety["image"]!),
//                         fit: BoxFit.cover,
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

// 1. Soil Preparation: Ensure well-drained, fertile soil with pH 6-7. Add organic compost to improve soil health.
// 2. Sowing: Sow seeds at appropriate depth (2-3 cm) and spacing. Early sowing promotes faster flowering.
// 3. Watering: Maintain consistent moisture but avoid waterlogging. Drip irrigation is recommended.
// 4. Weed Management: Regularly remove weeds to prevent competition for nutrients.
// 5. Fertilization: Apply nitrogen-rich fertilizers in moderation to promote healthy vegetative growth.
// 6. Pest and Disease Control: Monitor for aphids, powdery mildew, and fungal infections. Use biological or chemical control when necessary.
// 7. Support: Provide support for climbing varieties using trellises or sticks.
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

// 1. Proteins: Excellent plant-based protein source.
// 2. Vitamins: Rich in vitamin A, C, K, and B-complex vitamins.
// 3. Minerals: Contains potassium, magnesium, phosphorus, and iron.
// 4. Dietary Fiber: Supports digestion and helps maintain healthy cholesterol.
// 5. Antioxidants: Flavonoids and carotenoids help prevent oxidative stress.
// 6. Low Fat: Low in fat and calories, making it ideal for weight management.
// 7. Culinary Uses: Fresh peas, frozen peas, and canned peas can be used in soups, salads, and curries.
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



// import 'package:flutter/material.dart';

// class HomeGeneral extends StatelessWidget {
//   static const routeName = '/home-general';

//   HomeGeneral({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("General User Dashboard"),
//         backgroundColor: Colors.green.shade700,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Variation Card
//             buildDashboardCard(
//               context: context,
//               title: "Variation",
//               description: "Explore different pea varieties and their characteristics.",
//               color: Colors.green.shade400,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => VariationScreen()),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),

//             // Nursing Guide Card
//             buildDashboardCard(
//               context: context,
//               title: "Nursing Guide",
//               description: "Learn how to care for your pea crops professionally.",
//               color: Colors.orange.shade400,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => NursingGuideScreen()),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),

//             // Nutrition Card
//             buildDashboardCard(
//               context: context,
//               title: "Nutrition",
//               description: "Understand nutritional benefits of peas.",
//               color: Colors.brown.shade400,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => NutritionScreen()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildDashboardCard({
//     required BuildContext context,
//     required String title,
//     required String description,
//     required Color color,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         elevation: 8,
//         shadowColor: color.withOpacity(0.5),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//               colors: [color.withOpacity(0.7), color],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           padding: const EdgeInsets.all(20),
//           child: Row(
//             children: [
//               // Placeholder for icon
//               Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   color: Colors.white24,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.book, color: Colors.white, size: 40),
//               ),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(title,
//                         style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 8),
//                     Text(description,
//                         style:
//                             const TextStyle(color: Colors.white70, fontSize: 16)),
//                   ],
//                 ),
//               ),
//               const Icon(Icons.arrow_forward_ios, color: Colors.white70),
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

//                   // Updated square image container
//                   Container(
//                     height: 150,
//                     width: 150, // square box
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: Colors.grey.shade400),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: Image.asset(
//                         variety["image"]!,
//                         fit: BoxFit.contain, // keep aspect ratio
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

// 1. Soil Preparation: Ensure well-drained, fertile soil with pH 6-7. Add organic compost to improve soil health.
// 2. Sowing: Sow seeds at appropriate depth (2-3 cm) and spacing. Early sowing promotes faster flowering.
// 3. Watering: Maintain consistent moisture but avoid waterlogging. Drip irrigation is recommended.
// 4. Weed Management: Regularly remove weeds to prevent competition for nutrients.
// 5. Fertilization: Apply nitrogen-rich fertilizers in moderation to promote healthy vegetative growth.
// 6. Pest and Disease Control: Monitor for aphids, powdery mildew, and fungal infections. Use biological or chemical control when necessary.
// 7. Support: Provide support for climbing varieties using trellises or sticks.
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

// 1. Proteins: Excellent plant-based protein source.
// 2. Vitamins: Rich in vitamin A, C, K, and B-complex vitamins.
// 3. Minerals: Contains potassium, magnesium, phosphorus, and iron.
// 4. Dietary Fiber: Supports digestion and helps maintain healthy cholesterol.
// 5. Antioxidants: Flavonoids and carotenoids help prevent oxidative stress.
// 6. Low Fat: Low in fat and calories, making it ideal for weight management.
// 7. Culinary Uses: Fresh peas, frozen peas, and canned peas can be used in soups, salads, and curries.
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

class HomeGeneral extends StatelessWidget {
  static const routeName = '/home-general';

  HomeGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("সাধারণ ব্যবহারকারীর ড্যাশবোর্ড"),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Variety Card
            buildDashboardCard(
              context: context,
              title: "বিভিন্ন জাত",
              description: "মটরশুঁটির বিভিন্ন জাত এবং তাদের বৈশিষ্ট্য দেখুন।",
              color: Colors.green.shade400,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => VariationScreen()),
                );
              },
            ),
            const SizedBox(height: 20),

            // Nursing Guide Card
            buildDashboardCard(
              context: context,
              title: "পরিচর্যার নির্দেশিকা",
              description: "মটরশুঁটির গাছ কীভাবে পরিচর্যা করবেন শিখুন।",
              color: Colors.orange.shade400,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => NursingGuideScreen()),
                );
              },
            ),
            const SizedBox(height: 20),

            // Nutrition Card
            buildDashboardCard(
              context: context,
              title: "পুষ্টিগুণ",
              description: "মটরশুঁটির পুষ্টিগুণ সম্পর্কে জানুন।",
              color: Colors.brown.shade400,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => NutritionScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardCard({
    required BuildContext context,
    required String title,
    required String description,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 8,
        shadowColor: color.withOpacity(0.5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.book, color: Colors.white, size: 40),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text(description,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 16)),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}

//================ Variation Screen =================
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
        title: const Text("মটরশুঁটির বিভিন্ন জাত"),
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

//================ Nursing Guide Screen =================
class NursingGuideScreen extends StatelessWidget {
  NursingGuideScreen({super.key});

  final String nursingDescription = """
মটরশুঁটির ভালো ফলনের জন্য কিছু নির্দেশনা:

১. মাটির প্রস্তুতি: উর্বর ও পানি নিষ্কাশন ভালো এমন মাটি (pH ৬–৭) ব্যবহার করুন।
২. বপন: বীজ ২–৩ সেমি গভীরতায় ও সঠিক দূরত্বে বপন করুন।
৩. সেচ: নিয়মিত আর্দ্রতা বজায় রাখুন তবে জলাবদ্ধতা এড়িয়ে চলুন।
৪. আগাছা নিয়ন্ত্রণ: আগাছা পরিষ্কার রাখুন।
৫. সার প্রয়োগ: পরিমিত নাইট্রোজেন সার ব্যবহার করুন।
৬. রোগ ও কীটপতঙ্গ নিয়ন্ত্রণ: এফিডস ও মিলডিউ নিয়মিত পর্যবেক্ষণ করুন।
৭. সহায়তা: লতানো জাতের জন্য খুঁটি বা জালি ব্যবহার করুন।
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("মটরশুঁটি পরিচর্যা নির্দেশিকা"),
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

//================ Nutrition Screen =================
class NutritionScreen extends StatelessWidget {
  NutritionScreen({super.key});

  final String nutritionDescription = """
মটরশুঁটির পুষ্টিগুণ ও উপকারিতা:

১. প্রোটিন: উদ্ভিজ্জ প্রোটিনের ভালো উৎস।
২. ভিটামিন: ভিটামিন A, C, K এবং B-কমপ্লেক্স সমৃদ্ধ।
৩. খনিজ: পটাশিয়াম, ম্যাগনেসিয়াম, ফসফরাস এবং আয়রন রয়েছে।
৪. আঁশ: হজমে সহায়তা করে এবং কোলেস্টেরল নিয়ন্ত্রণে রাখে।
৫. অ্যান্টিঅক্সিডেন্ট: দেহকে অক্সিডেটিভ স্ট্রেস থেকে রক্ষা করে।
৬. কম ফ্যাট: ক্যালরি ও ফ্যাট কম, ওজন নিয়ন্ত্রণে সাহায্য করে।
৭. রান্নায় ব্যবহার: স্যুপ, সালাদ ও তরকারিতে ব্যবহার করা যায়।
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("মটরশুঁটির পুষ্টিগুণ"),
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
