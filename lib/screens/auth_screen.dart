// // import 'package:flutter/material.dart';
// // import 'home_general.dart';
// // import 'home_farmer.dart';

// // class AuthScreen extends StatelessWidget {
// //   static const routeName = '/auth';

// //   void _navigate(BuildContext context, String role) {
// //     if (role == 'farmer') {
// //       Navigator.of(context).pushReplacementNamed(HomeFarmer.routeName);
// //     } else {
// //       Navigator.of(context).pushReplacementNamed(HomeGeneral.routeName);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         fit: StackFit.expand,
// //         children: [
// //           // Background Image
// //           Image.asset(
// //             'assets/peas_intro.jpg', // <-- put your background image in assets
// //             fit: BoxFit.cover,
// //           ),

// //           // Dark overlay for readability
// //           Container(
// //             color: Colors.black.withOpacity(0.4),
// //           ),

// //           // Content
// //           Center(
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 24),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     "Get Started",
// //                     style: TextStyle(
// //                       fontSize: 32,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   SizedBox(height: 40),

// //                   // General User button
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton(
// //                       onPressed: () => _navigate(context, 'general'),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Colors.green.shade700,
// //                         padding: EdgeInsets.symmetric(vertical: 14),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                       ),
// //                       child: Text(
// //                         "General User",
// //                         style: TextStyle(fontSize: 18),
// //                       ),
// //                     ),
// //                   ),

// //                   SizedBox(height: 16),

// //                   // Farmer button
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton(
// //                       onPressed: () => _navigate(context, 'farmer'),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Colors.orange.shade700,
// //                         padding: EdgeInsets.symmetric(vertical: 14),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                       ),
// //                       child: Text(
// //                         "Farmer",
// //                         style: TextStyle(fontSize: 18),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }



// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'home_general.dart';
// // import 'home_farmer.dart';
// // import '../providers/auth_provider.dart';


// // class AuthScreen extends StatelessWidget {
// //   static const routeName = '/auth';

// //   void _navigate(BuildContext context, String role) {
// //     final auth = Provider.of<AuthProvider>(context, listen: false);
// //     auth.loginAs(role);

// //     if (role == 'farmer') {
// //       Navigator.of(context).pushReplacementNamed(HomeFarmer.routeName);
// //     } else {
// //       Navigator.of(context).pushReplacementNamed(HomeGeneral.routeName);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         fit: StackFit.expand,
// //         children: [
// //           Image.asset('assets/peas_intro.jpg', fit: BoxFit.cover),
// //           Container(color: Colors.black.withOpacity(0.4)),
// //           Center(
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 24),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text("Get Started", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
// //                   SizedBox(height: 40),
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton(
// //                       onPressed: () => _navigate(context, 'general'),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Colors.green.shade700,
// //                         padding: EdgeInsets.symmetric(vertical: 14),
// //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //                       ),
// //                       child: Text("General User", style: TextStyle(fontSize: 18)),
// //                     ),
// //                   ),
// //                   SizedBox(height: 16),
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton(
// //                       onPressed: () => _navigate(context, 'farmer'),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Colors.orange.shade700,
// //                         padding: EdgeInsets.symmetric(vertical: 14),
// //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //                       ),
// //                       child: Text("Farmer", style: TextStyle(fontSize: 18)),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'home_farmer.dart';
// import 'home_general.dart';

// class AuthScreen extends StatelessWidget {
//   static const routeName = '/auth';

//   void _navigate(BuildContext context, String role) {
//     if (role == 'Farmer') {
//       Navigator.of(context).pushReplacementNamed(HomeFarmer.routeName);
//     } else {
//       Navigator.of(context).pushReplacementNamed(HomeGeneral.routeName);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/peas_intro.jpg"), // background image
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _navigate(context, 'General User'),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                     backgroundColor: Colors.green.shade700,
//                   ),
//                   child: Text("General User", style: TextStyle(fontSize: 18)),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _navigate(context, 'Farmer'),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                     backgroundColor: Colors.green.shade700,
//                   ),
//                   child: Text("Farmer", style: TextStyle(fontSize: 18)),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'soil_condition_screen.dart';
import 'weather_screen.dart';

class HomeFarmer extends StatelessWidget {
  static const routeName = '/home-farmer'; // 🔥 এটা অ্যাড করলাম

  const HomeFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('কৃষকের হোম'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Soil Condition Checker
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.grass, color: Colors.green),
              title: const Text('মাটির অবস্থা পরীক্ষা করুন'),
              subtitle: const Text('NPK ও pH দিয়ে মটরশুটি উপযোগিতা দেখুন'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SoilConditionScreen(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),

          // Weather Tips
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.cloud, color: Colors.blue),
              title: const Text('আবহাওয়া পরামর্শ'),
              subtitle: const Text('মটরশুটি চাষে আবহাওয়ার প্রভাব জানুন'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WeatherScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
