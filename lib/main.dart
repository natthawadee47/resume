import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
        backgroundColor: const Color.fromARGB(255, 139, 132, 247),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // รูปภาพโปรไฟล์
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  'assets/images/Pic1.jpg',
                ), // รูปภาพโปรไฟล์
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 136, 136),
                borderRadius: BorderRadius.circular(10.0),
              ),
              alignment: Alignment.center, // ทำให้ข้อความอยู่ตรงกลาง
              child: Text(
                "ชื่อ: นางสาวณัฐวดี เชื้อลิ้นฟ้า",
                style: GoogleFonts.laila(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // เปลี่ยนสีตัวอักษรเป็นสีดำ
                ),
              ),
            ),
            const SizedBox(height: 10),

            // ภูมิลำเนา
            RichText(
              text: TextSpan(
                text: 'ภูมิลำเนา:', // ตัวหนา
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ' เพชรบูรณ์', // ข้อความปกติ
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // งานอดิเรก
            RichText(
              text: TextSpan(
                text: 'งานอดิเรก:', // ตัวหนา
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ' อ่านนิยาย, ฟังเพลง, ดูหนัง, วาดรูป', // ข้อความปกติ
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ประวัติการศึกษา
            RichText(
              text: TextSpan(
                text: 'ประวัติการศึกษา:', // ตัวหนา
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: '', // ข้อความเพิ่มเติมถ้ามี
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // ประถม
            RichText(
              text: TextSpan(
                text: 'ประถม: ', // ตัวหนา
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'โรงเรียน ผดุงวิทย์ ปี 2560', // ข้อความปกติ
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),

            // มัธยมต้น
            RichText(
              text: TextSpan(
                text: 'มัธยมต้น: ', // ตัวหนา
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'โรงเรียน หล่มสักวิทยาคม ปี 2563', // ข้อความปกติ
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),

            // มัธยมปลาย
            RichText(
              text: TextSpan(
                text: 'มัธยมปลาย: ', // ตัวหนา
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'โรงเรียน หล่มสักวิทยาคม ปี 2566', // ข้อความปกติ
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
