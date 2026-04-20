import 'package:flutter/material.dart';

void main() {
  runApp(const SmartGadgetsApp());
}

class SmartGadgetsApp extends StatelessWidget {
  const SmartGadgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Gadgets',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      // الشاشة الافتراضية للتطبيق
      home: const HomeScreen(), 
    );
  }
}

// -----------------------------------------
// 1. HomeScreen (الشاشة الرئيسية)
// -----------------------------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('متجر الأجهزة الذكية'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.watch, size: 80, color: Colors.blueGrey),
                const SizedBox(height: 10),
                const Text(
                  'ساعة ذكية Pro',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                // زر الانتقال (Push)
                ElevatedButton.icon(
                  onPressed: () {
                    // استخدام Navigator.push لإضافة الشاشة الجديدة للمكدس
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info_outline),
                  label: const Text('عرض المواصفات'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// -----------------------------------------
// 2. DetailScreen (شاشة التفاصيل)
// -----------------------------------------
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل المنتج'),
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.memory, size: 100, color: Colors.blueAccent),
            const SizedBox(height: 20),
            const Text(
              'المواصفات التقنية:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '- شاشة AMOLED\n- بطارية تدوم 7 أيام\n- مقاومة للماء 50m',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // زر العودة (Pop)
            ElevatedButton.icon(
              onPressed: () {
                // استخدام Navigator.pop لإزالة الشاشة الحالية من المكدس
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('العودة للمتجر'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}