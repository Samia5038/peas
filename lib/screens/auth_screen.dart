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
