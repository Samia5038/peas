// import 'package:flutter/material.dart';

// class DetailScreen extends StatelessWidget {
//   final String title;
//   final String content;
//   final String? image; // ✅ new field

//   DetailScreen({
//     required this.title,
//     required this.content,
//     this.image, // ✅ optional
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(18),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (image != null && image!.isNotEmpty) ...[
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(
//                   image!,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(height: 16),
//             ],
//             Text(
//               title,
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 12),
//             Text(
//               content,
//               style: TextStyle(fontSize: 16, height: 1.4),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Practical tips',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//             ),
//             SizedBox(height: 8),
//             Card(
//               elevation: 2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Text(
//                   '• Tip 1: Keep soil moist but not waterlogged.\n'
//                   '• Tip 2: Watch for aphids early and remove by spraying water.',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String content;
  final String? image;

  const DetailScreen({super.key, required this.title, required this.content, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (image != null && image!.isNotEmpty)
            ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(image!)),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(content, style: const TextStyle(fontSize: 16, height: 1.4)),
        ]),
      ),
    );
  }
}
