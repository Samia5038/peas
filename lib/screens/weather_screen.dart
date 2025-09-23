// import 'package:flutter/material.dart';

// class WeatherScreen extends StatelessWidget {
//   const WeatherScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Weather Tips')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
//           Text('Weather & Peas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           SizedBox(height: 12),
//           Text('• Peas prefer cool weather. Avoid extreme heat during flowering.'),
//           SizedBox(height: 8),
//           Text('• Rain during flowering can reduce yield and increase disease risk.'),
//           SizedBox(height: 8),
//           Text('• Monitor forecasts and protect crops from unexpected frosts.'),
//         ]),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('আবহাওয়া পরামর্শ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'আবহাওয়া ও মটরশুটি',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text('• মটরশুটি শীতল আবহাওয়ায় ভালো জন্মায়। ফুল ফোটার সময় অতিরিক্ত গরম এড়িয়ে চলা উচিত।'),
            SizedBox(height: 8),
            Text('• ফুল ফোটার সময় বৃষ্টি হলে ফলন কমে যেতে পারে এবং রোগের ঝুঁকি বাড়ে।'),
            SizedBox(height: 8),
            Text('• আবহাওয়ার পূর্বাভাস লক্ষ্য করুন এবং হঠাৎ তুষারপাত বা ঠান্ডা থেকে গাছকে রক্ষা করুন।'),
          ],
        ),
      ),
    );
  }
}
