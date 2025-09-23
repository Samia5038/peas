


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:peas/providers/auth_provider.dart';
// import 'package:peas/screens/auth_screen.dart';
// import 'package:peas/screens/home_general.dart';
// import 'package:peas/screens/home_farmer.dart';
// import 'package:peas/screens/intro_screen.dart';

// // void main() {
// //   runApp(PeasApp());
// // }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text('Test')),
//       body: Center(child: Text('Hello Peas!')),
//     ),
//   ));
// }


// class PeasApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => AuthProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'PeasCare',
//         theme: ThemeData(
//           primarySwatch: Colors.green,
//           scaffoldBackgroundColor: Colors.grey[100],
//         ),
//         initialRoute: '/',
//         routes: {
//           '/': (_) => Scaffold(
//                 appBar: AppBar(title: Text('Intro Test')),
//                 body: Center(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => HomeFarmer()),
//                       );
//                     },
//                     child: Text('Go to Home Farmer'),
//                   ),
//                 ),
//               ),
//           AuthScreen.routeName: (_) => AuthScreen(),
//           HomeFarmer.routeName: (_) => HomeFarmer(),
//           HomeGeneral.routeName: (_) => HomeGeneral(),
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:peas/providers/auth_provider.dart';
// import 'package:peas/screens/auth_screen.dart';
// import 'package:peas/screens/home_general.dart';
// import 'package:peas/screens/home_farmer.dart';
// import 'package:peas/screens/intro_screen.dart';

// void main() {
//   runApp(const PeasApp());
// }

// class PeasApp extends StatelessWidget {
//   const PeasApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthProvider()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'PeasCare',
//         theme: ThemeData(primarySwatch: Colors.green),
//         // initial route is IntroScreen
//         initialRoute: '/',
//         routes: {
//           '/': (_) => const IntroScreen(),
//           AuthScreen.routeName: (_) => AuthScreen(),  // removed const
//           HomeGeneral.routeName: (_) => HomeGeneral(), // removed const
//           HomeFarmer.routeName: (_) => HomeFarmer(),   // removed const
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:peas/providers/auth_provider.dart';
import 'package:peas/screens/home_general.dart';
import 'package:peas/screens/home_farmer.dart';
import 'package:peas/screens/intro_screen.dart';

void main() {
  runApp(const PeasApp());
}

class PeasApp extends StatelessWidget {
  const PeasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'মটরশুঁটি',
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        routes: {
          '/': (_) => const IntroScreen(),
          HomeGeneral.routeName: (_) =>  HomeGeneral(),
          HomeFarmer.routeName: (_) =>  HomeFarmer(),
        },
      ),
    );
  }
}
