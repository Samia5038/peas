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
