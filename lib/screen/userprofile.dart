import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget { // เปลี่ยนชื่อคลาส
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.router.replaceNamed('/home');
          },
        ),
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              // เพิ่มรูปภาพของคุณที่นี่
            ),
            SizedBox(height: 10),
            Text(
              'XXXXXXXXXX',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('@XXX_XXX123'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.router.replaceNamed('/edit');
              },
              child: Text('Edit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                // นำทางไปยังหน้าการตั้งค่า
              },
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('Support'),
              onTap: () {
                // นำทางไปยังหน้าสนับสนุน
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                // การแชร์โปรไฟล์
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                context.router.replaceNamed('/First');
              },
              child: Text('Log out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Profile Page',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const UserProfilePage(), // เรียกคลาสที่แก้ไขแล้ว
    debugShowCheckedModeBanner: false,
  ));
}
