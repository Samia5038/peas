// import 'package:flutter/material.dart';
// import 'auth_screen.dart';

// class IntroScreen extends StatefulWidget {
//   @override
//   State<IntroScreen> createState() => _IntroScreenState();
// }

// class _IntroScreenState extends State<IntroScreen> with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _scaleAnim;
//   late final Animation<Offset> _slideAnim;
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1400));
//     _scaleAnim = Tween<double>(begin: 0.9, end: 1.02).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//     _slideAnim = Tween<Offset>(begin: Offset(0, 0.1), end: Offset.zero).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
//     _controller.repeat(reverse: true);
//   }

//   @override
//   void dispose() {
//     _controller.stop();
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
//           child: Column(
//             children: [
//               Expanded(
//                 child: Center(
//                   child: SlideTransition(
//                     position: _slideAnim,
//                     child: ScaleTransition(
//                       scale: _scaleAnim,
//                       child: Container(
//                         width: size.width * 0.85,
//                         height: size.width * 0.65,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16, offset: Offset(0,8))],
//                           image: DecorationImage(
//                             image: AssetImage('assets/peas_intro.jpg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text('PeasCare', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
//               SizedBox(height: 8),
//               Text(
//                 'Grow healthy peas — tips on variation, nutrition and nursing.\nFor farmers and general users.',
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () => Navigator.of(context).pushNamed(AuthScreen.routeName),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 36, vertical: 14),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 ),
//                 child: Text('Get Started', style: TextStyle(fontSize: 16)),
//               ),
//               SizedBox(height: 24),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





// // import 'package:flutter/material.dart';
// // import 'auth_screen.dart';

// // class IntroScreen extends StatelessWidget {
// //   static const routeName = '/intro';

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         width: double.infinity,
// //         padding: EdgeInsets.all(20),
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [Colors.green.shade700, Colors.green.shade300],
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //           ),
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Image.asset(
// //               'assets/peas_intro.png', // Add a welcome image
// //               height: 200,
// //             ),
// //             SizedBox(height: 30),
// //             Text(
// //               'Welcome to Peas App',
// //               style: TextStyle(
// //                 fontSize: 28,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //             SizedBox(height: 15),
// //             Text(
// //               'Learn and manage pea cultivation easily!',
// //               textAlign: TextAlign.center,
// //               style: TextStyle(
// //                 fontSize: 18,
// //                 color: Colors.white70,
// //               ),
// //             ),
// //             SizedBox(height: 40),
// //             ElevatedButton(
// //               onPressed: () {
// //                 Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(25),
// //                 ),
// //                 backgroundColor: Colors.white,
// //               ),
// //               child: Text(
// //                 'Get Started',
// //                 style: TextStyle(
// //                   color: Colors.green.shade700,
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'home_general.dart';
// import 'home_farmer.dart';

// class IntroScreen extends StatefulWidget {
//   const IntroScreen({super.key});

//   @override
//   State<IntroScreen> createState() => _IntroScreenState();
// }

// class _IntroScreenState extends State<IntroScreen> {
//   bool showWelcome = true; // initially show welcome page

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // Background image
//           Image.asset(
//             "assets/peas_intro.jpg",
//             fit: BoxFit.cover,
//           ),

//           // Blur + dark overlay
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
//             child: Container(
//               color: Colors.black.withOpacity(0.3),
//             ),
//           ),

//           // Main content
//           Center(
//             child: showWelcome ? buildWelcomePage() : buildRoleSelection(),
//           ),
//         ],
//       ),
//     );
//   }

//   // Welcome page
//   Widget buildWelcomePage() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         const Text(
//           "Welcome to Peas App",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 30),
//         const Text(
//           "Your guide to farming and agricultural insights",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white70,
//             fontSize: 18,
//           ),
//         ),
//         const SizedBox(height: 50),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             backgroundColor: Colors.green.shade600,
//           ),
//           onPressed: () {
//             setState(() {
//               showWelcome = false; // switch to role selection page
//             });
//           },
//           child: const Text(
//             "Welcome",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }

//   // Role selection page (your existing UI)
//   Widget buildRoleSelection() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         const Text(
//           "Choose your role",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 40),

//         // General User button
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             backgroundColor: Colors.green.shade600,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, HomeGeneral.routeName);
//           },
//           child: const Text(
//             "General User",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),

//         const SizedBox(height: 20),

//         // Farmer button
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             backgroundColor: Colors.brown.shade600,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, HomeFarmer.routeName);
//           },
//           child: const Text(
//             "Farmer",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }



// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'home_general.dart';
// import 'home_farmer.dart';

// class IntroScreen extends StatefulWidget {
//   const IntroScreen({super.key});

//   @override
//   State<IntroScreen> createState() => _IntroScreenState();
// }

// class _IntroScreenState extends State<IntroScreen> {
//   bool showWelcome = true; // প্রথমে ওয়েলকাম পেজ দেখাবে

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // ব্যাকগ্রাউন্ড ইমেজ
//           Image.asset(
//             "assets/peas_intro.jpg",
//             fit: BoxFit.cover,
//           ),

//           // ব্যাকগ্রাউন্ড ব্লার + ডার্ক ওভারলে
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
//             child: Container(
//               color: Colors.black.withOpacity(0.3),
//             ),
//           ),

//           // মূল কনটেন্ট
//           Center(
//             child: showWelcome ? buildWelcomePage() : buildRoleSelection(),
//           ),
//         ],
//       ),
//     );
//   }

//   // ✅ ওয়েলকাম পেজ
//   Widget buildWelcomePage() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         const Text(
//           "পিস অ্যাপে স্বাগতম",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 30),
//         const Text(
//           "আপনার কৃষি ও চাষাবাদের সহযোগী",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white70,
//             fontSize: 18,
//           ),
//         ),
//         const SizedBox(height: 50),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             backgroundColor: Colors.green.shade600,
//           ),
//           onPressed: () {
//             setState(() {
//               showWelcome = false; // বাটনে চাপ দিলে রোল সিলেকশন পেজ আসবে
//             });
//           },
//           child: const Text(
//             "চলুন শুরু করি",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }

//   // ✅ রোল সিলেকশন পেজ (General User / Farmer)
//   Widget buildRoleSelection() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         const Text(
//           "আপনার ভূমিকা নির্বাচন করুন",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 40),

//         // General User বাটন
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             backgroundColor: Colors.green.shade600,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, HomeGeneral.routeName);
//           },
//           child: const Text(
//             "সাধারণ ব্যবহারকারী",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),

//         const SizedBox(height: 20),

//         // Farmer বাটন
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             backgroundColor: Colors.brown.shade600,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, HomeFarmer.routeName);
//           },
//           child: const Text(
//             "কৃষক",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }



import 'dart:ui';
import 'package:flutter/material.dart';
import 'home_general.dart';
import 'home_farmer.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = '/intro';
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool showWelcome = true; // প্রথমে ওয়েলকাম পেজ দেখাবে

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // ব্যাকগ্রাউন্ড ইমেজ
          Image.asset(
            "assets/peas_intro.jpg",
            fit: BoxFit.cover,
          ),

          // ব্যাকগ্রাউন্ড ব্লার + ডার্ক ওভারলে
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),

          // মূল কনটেন্ট
          Center(
            child: showWelcome ? buildWelcomePage() : buildRoleSelection(),
          ),
        ],
      ),
    );
  }

  // ✅ ওয়েলকাম পেজ
  Widget buildWelcomePage() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "মটরশুঁটি অ্যাপে স্বাগতম",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          "আপনার কৃষি ও চাষাবাদের সহযোগী",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.green.shade600,
          ),
          onPressed: () {
            setState(() {
              showWelcome = false; // বাটনে চাপ দিলে রোল সিলেকশন পেজ আসবে
            });
          },
          child: const Text(
            "চলুন শুরু করি",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  // ✅ রোল সিলেকশন পেজ (General User / Farmer)
  Widget buildRoleSelection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "আপনার ভূমিকা নির্বাচন করুন",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),

        // General User বাটন
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.green.shade600,
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomeGeneral.routeName);
          },
          child: const Text(
            "সাধারণ ব্যবহারকারী",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),

        const SizedBox(height: 20),

        // Farmer বাটন
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.brown.shade600,
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomeFarmer.routeName);
          },
          child: const Text(
            "কৃষক",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
