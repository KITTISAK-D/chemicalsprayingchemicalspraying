import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddProfilePage extends StatelessWidget {
  const AddProfilePage({super.key});
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
        title: Text('AddProfile'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 48, color: Colors.green),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://example.com/robot_image.jpg'), // URL ของรูปภาพหุ่นยนต์
                  ),
                  title: Text('Robot 1'),
                  subtitle: Text('80:da:1a:a7:52\nออนไลน์'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.videocam),
                      SizedBox(width: 8),
                      Text('ออนไลน์'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                      // ใส่โค้ดเมื่อกดปุ่มแจ้งเตือน
                    },
                    icon: Icon(Icons.notifications),
                    label: Text('แจ้งเตือน'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // ใส่โค้ดเมื่อกดปุ่มตรวจติดตาม
                    },
                    icon: Icon(Icons.location_on),
                    label: Text('ตรวจติดตาม'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
