// import 'package:flutter/material.dart';

// class SoilCheckerScreen extends StatefulWidget {
//   @override
//   _SoilCheckerScreenState createState() => _SoilCheckerScreenState();
// }

// class _SoilCheckerScreenState extends State<SoilCheckerScreen> {
//   double? n, p, k, ph;
//   String result = '';

//   void _checkSoil() {
//     setState(() {
//       if (n == null || p == null || k == null || ph == null) {
//         result = '⚠️ Please fill all inputs';
//         return;
//       }

//       if (n! >= 20 && n! <= 40 && p! >= 30 && p! <= 60 && k! >= 80 && k! <= 120 && ph! >= 6 && ph! <= 7.5) {
//         result = '✅ Soil is suitable for pea cultivation';
//       } else {
//         result = '❌ Soil is not ideal for peas. Adjust nutrients or pH.';
//       }
//     });
//   }

//   Widget _buildInput(String label, Function(String) onChanged) {
//     return TextField(
//       decoration: InputDecoration(labelText: label),
//       keyboardType: TextInputType.number,
//       onChanged: (v) => onChanged(v),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Soil Condition Checker')),
//       body: Padding(
//         padding: EdgeInsets.all(18),
//         child: Column(
//           children: [
//             _buildInput('Nitrogen (N kg/ha)', (v) => n = double.tryParse(v)),
//             _buildInput('Phosphorus (P kg/ha)', (v) => p = double.tryParse(v)),
//             _buildInput('Potassium (K kg/ha)', (v) => k = double.tryParse(v)),
//             _buildInput('Soil pH', (v) => ph = double.tryParse(v)),
//             SizedBox(height: 16),
//             ElevatedButton(onPressed: _checkSoil, child: Text('Check Soil')),
//             SizedBox(height: 20),
//             if (result.isNotEmpty)
//               Text(result, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class SoilConditionScreen extends StatefulWidget {
//   const SoilConditionScreen({super.key});
//   @override
//   State<SoilConditionScreen> createState() => _SoilConditionScreenState();
// }

// class _SoilConditionScreenState extends State<SoilConditionScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _nController = TextEditingController();
//   final _pController = TextEditingController();
//   final _kController = TextEditingController();
//   final _pHController = TextEditingController();
//   String _result = '';

//   @override
//   void dispose() {
//     _nController.dispose();
//     _pController.dispose();
//     _kController.dispose();
//     _pHController.dispose();
//     super.dispose();
//   }

//   void _checkSoil() {
//     if (!_formKey.currentState!.validate()) return;
//     final n = double.tryParse(_nController.text) ?? 0;
//     final p = double.tryParse(_pController.text) ?? 0;
//     final k = double.tryParse(_kController.text) ?? 0;
//     final ph = double.tryParse(_pHController.text) ?? 7.0;

//     final phOk = ph >= 6.0 && ph <= 7.5;
//     final balanced = (n >= 20 && n <= 60) && (p >= 10 && p <= 30) && (k >= 80 && k <= 200);

//     setState(() {
//       if (phOk && balanced) {
//         _result = 'Soil looks suitable for peas.';
//       } else {
//         final reasons = <String>[];
//         if (!phOk) reasons.add('Adjust pH to 6.0–7.5.');
//         if (!(n >= 20 && n <= 60)) reasons.add('Nitrogen low or high (target 20–60).');
//         if (!(p >= 10 && p <= 30)) reasons.add('Add phosphorus (10–30 is ideal).');
//         if (!(k >= 80 && k <= 200)) reasons.add('Adjust potassium (80–200 ideal).');
//         _result = 'Not ideal: ${reasons.join(' ')}';
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Soil Condition Checker')),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Form(
//           key: _formKey,
//           child: Column(children: [
//             TextFormField(controller: _nController, decoration: const InputDecoration(labelText: 'Nitrogen (N) (mg/kg)'), keyboardType: TextInputType.number, validator: (v) => (v==null || v.isEmpty) ? 'Enter N' : null),
//             const SizedBox(height: 8),
//             TextFormField(controller: _pController, decoration: const InputDecoration(labelText: 'Phosphorus (P) (mg/kg)'), keyboardType: TextInputType.number, validator: (v) => (v==null || v.isEmpty) ? 'Enter P' : null),
//             const SizedBox(height: 8),
//             TextFormField(controller: _kController, decoration: const InputDecoration(labelText: 'Potassium (K) (mg/kg)'), keyboardType: TextInputType.number, validator: (v) => (v==null || v.isEmpty) ? 'Enter K' : null),
//             const SizedBox(height: 8),
//             TextFormField(controller: _pHController, decoration: const InputDecoration(labelText: 'Soil pH (e.g. 6.5)'), keyboardType: TextInputType.number, validator: (v) => (v==null || v.isEmpty) ? 'Enter pH' : null),
//             const SizedBox(height: 12),
//             ElevatedButton(onPressed: _checkSoil, child: const Text('Check Soil')),
//             const SizedBox(height: 16),
//             if (_result.isNotEmpty)
//               Card(
//                 elevation: 2,
//                 child: Padding(padding: const EdgeInsets.all(12.0), child: Text(_result)),
//               )
//           ]),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class SoilConditionScreen extends StatefulWidget {
  const SoilConditionScreen({super.key});
  @override
  State<SoilConditionScreen> createState() => _SoilConditionScreenState();
}

class _SoilConditionScreenState extends State<SoilConditionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nController = TextEditingController();
  final _pController = TextEditingController();
  final _kController = TextEditingController();
  final _pHController = TextEditingController();
  String _result = '';

  @override
  void dispose() {
    _nController.dispose();
    _pController.dispose();
    _kController.dispose();
    _pHController.dispose();
    super.dispose();
  }

  void _checkSoil() {
    if (!_formKey.currentState!.validate()) return;
    final n = double.tryParse(_nController.text) ?? 0;
    final p = double.tryParse(_pController.text) ?? 0;
    final k = double.tryParse(_kController.text) ?? 0;
    final ph = double.tryParse(_pHController.text) ?? 7.0;

    final phOk = ph >= 6.0 && ph <= 7.5;
    final balanced =
        (n >= 20 && n <= 60) && (p >= 10 && p <= 30) && (k >= 80 && k <= 200);

    setState(() {
      if (phOk && balanced) {
        _result = 'মাটির অবস্থা মটরশুঁটির জন্য উপযুক্ত।';
      } else {
        final reasons = <String>[];
        if (!phOk) reasons.add('pH মান 6.0 – 7.5 এর মধ্যে আনুন।');
        if (!(n >= 20 && n <= 60))
          reasons.add('নাইট্রোজেন কম/বেশি (২০–৬০ হওয়া দরকার)।');
        if (!(p >= 10 && p <= 30))
          reasons.add('ফসফরাস যোগ করুন (১০–৩০ হওয়া দরকার)।');
        if (!(k >= 80 && k <= 200))
          reasons.add('পটাশিয়াম ঠিক করুন (৮০–২০০ হওয়া দরকার)।');
        _result = 'উপযুক্ত নয়: ${reasons.join(' ')}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('মাটির অবস্থা পরীক্ষক')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: _nController,
              decoration: const InputDecoration(labelText: 'নাইট্রোজেন (N) (mg/kg)'),
              keyboardType: TextInputType.number,
              validator: (v) => (v == null || v.isEmpty) ? 'নাইট্রোজেন দিন' : null,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _pController,
              decoration:
                  const InputDecoration(labelText: 'ফসফরাস (P) (mg/kg)'),
              keyboardType: TextInputType.number,
              validator: (v) => (v == null || v.isEmpty) ? 'ফসফরাস দিন' : null,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _kController,
              decoration:
                  const InputDecoration(labelText: 'পটাশিয়াম (K) (mg/kg)'),
              keyboardType: TextInputType.number,
              validator: (v) => (v == null || v.isEmpty) ? 'পটাশিয়াম দিন' : null,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _pHController,
              decoration: const InputDecoration(labelText: 'মাটির pH (যেমন ৬.৫)'),
              keyboardType: TextInputType.number,
              validator: (v) => (v == null || v.isEmpty) ? 'pH মান দিন' : null,
            ),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: _checkSoil, child: const Text('মাটি পরীক্ষা করুন')),
            const SizedBox(height: 16),
            if (_result.isNotEmpty)
              Card(
                elevation: 2,
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(_result,
                        style: const TextStyle(fontSize: 16))),
              )
          ]),
        ),
      ),
    );
  }
}
