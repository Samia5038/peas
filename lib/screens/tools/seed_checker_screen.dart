import 'package:flutter/material.dart';

class SeedCheckerScreen extends StatefulWidget {
  @override
  _SeedCheckerScreenState createState() => _SeedCheckerScreenState();
}

class _SeedCheckerScreenState extends State<SeedCheckerScreen> {
  double? size, weight;
  String result = '';

  void _checkSeed() {
    setState(() {
      if (size == null || weight == null) {
        result = '⚠️ Please enter all inputs';
        return;
      }

      if (size! >= 7 && size! <= 10 && weight! >= 0.2 && weight! <= 0.5) {
        result = '✅ Good quality seed';
      } else {
        result = '❌ Poor seed quality';
      }
    });
  }

  Widget _buildInput(String label, Function(String) onChanged) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
      onChanged: (v) => onChanged(v),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seed Quality Checker')),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            _buildInput('Seed size (mm)', (v) => size = double.tryParse(v)),
            _buildInput('Seed weight (g)', (v) => weight = double.tryParse(v)),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _checkSeed, child: Text('Check Seed')),
            SizedBox(height: 20),
            if (result.isNotEmpty)
              Text(result, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
