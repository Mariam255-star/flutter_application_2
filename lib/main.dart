import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorProfilePage(),
    );
  }
}

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Doctor Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // يخلي العنوان في النص
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة الدكتور والمعلومات
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/images/download.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dr. Sayed Abdul-Aziz',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Eye Special',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.orange, size: 20),
                          SizedBox(width: 4),
                          Text('3'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          _callButton('1'),
                          const SizedBox(width: 8),
                          _callButton('2'),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              'About',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Professor of Eye Special - Former Head of Department of Eye Special, Cairo University',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  _infoRow(Icons.local_hospital, 'Cleopatra Hospital'),
                  SizedBox(height: 8),
                  _infoRow(Icons.access_time, '10 - 19'),
                  SizedBox(height: 8),
                  _infoRow(Icons.location_on, '2 Gamaa Street, Giza'),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Divider(),
            const Text(
              'Contact Info',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  _infoRow(Icons.email, 'dr@6.com'),
                  SizedBox(height: 8),
                  _infoRow(Icons.phone, '01032564823'),
                  SizedBox(height: 8),
                  _infoRow(Icons.phone, '01125466125'),
                ],
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
              label: const Text('Chat With Dr. Sayed'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Book an Appointment'),
            )
          ],
        ),
      ),
    );
  }
}

// ويدجت لزرار الاتصال
// ignore: camel_case_types
class _callButton extends StatelessWidget {
  final String label;
  const _callButton(this.label);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue.shade50,
      radius: 20,
      child: Icon(Icons.call, color: Colors.blue),
    );
  }
}

// ويدجت لسطر المعلومات
// ignore: camel_case_types
class _infoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _infoRow(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}
