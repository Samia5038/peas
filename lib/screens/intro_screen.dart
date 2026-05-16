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
