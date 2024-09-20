import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddprofilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garden List',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GardenListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GardenListScreen extends StatefulWidget {
  @override
  _GardenListScreenState createState() => _GardenListScreenState();
}

class _GardenListScreenState extends State<GardenListScreen> {
  List<Garden> gardens = [
    Garden(name: 'สวนมังคุด', status: 'ออนไลน์', time: '80 ชั่วโมง 5:49s', progress: 40, image: 'assets/mangosteen.png'),
    Garden(name: 'สวนทุเรียน', status: 'ออนไลน์', time: '80 ชั่วโมง 5:49s', progress: 40, image: 'assets/durian.png'),
    Garden(name: 'สวนลำไย', status: 'ออนไลน์', time: '80 ชั่วโมง 5:49s', progress: 40, image: 'assets/longan.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สวนของฉัน'),
      ),
      body: _buildGardenList(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.router.replaceNamed('/ปุ่มเพิ่มอุปกรณ์');
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              // Do something when pressed
            },
            child: Icon(Icons.menu),
            backgroundColor: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'ตั้งค่า',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'แจ้งเตือน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'โปรไฟล์',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _onItemTapped(index, context); // เรียกฟังก์ชันเมื่อกดปุ่ม
        },
      ),
    );
  }

  // ฟังก์ชันสำหรับแสดงรายการสวน
  Widget _buildGardenList() {
    return ListView.builder(
      itemCount: gardens.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(gardens[index].name),
          background: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.red,
            child: Icon(Icons.delete, color: Colors.white),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.delete, color: Colors.white),
          ),
          confirmDismiss: (direction) async {
            if (direction == DismissDirection.endToStart) {
              return await _confirmDelete();
            } else {
              return false;
            }
          },
          onDismissed: (direction) {
            setState(() {
              gardens.removeAt(index);
            });
          },
          child: GardenTile(
            garden: gardens[index],
            onEdit: () {
              _editGarden(index);
            },
            onDelete: () {
              setState(() {
                gardens.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }

  Future<bool?> _confirmDelete() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('ลบสวนนี้หรือไม่?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('ยกเลิก'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('ลบ'),
            ),
          ],
        );
      },
    );
  }

  void _editGarden(int index) {
    // คุณสามารถเพิ่มโค้ดการแก้ไขสวนที่นี่
  }

  // ฟังก์ชันสำหรับเปลี่ยนหน้าเมื่อกดปุ่ม
  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        // หน้าหลัก
        context.router.replaceNamed('/addprofile');
        break;
      case 1:
        // หน้า "ตั้งค่า"
        context.router.pushNamed('/nottification');
        break;
      case 2:
        // หน้า "แจ้งเตือน"
        context.router.pushNamed('/setting');//หน้า setting กับ nottification สลับหน้ากัน
        break;
      case 3:
        // หน้า "โปรไฟล์"
        context.router.pushNamed('/edit');
        break;
    }
  }
}

class Garden {
  final String name;
  final String status;
  final String time;
  final int progress;
  final String image;

  Garden({
    required this.name,
    required this.status,
    required this.time,
    required this.progress,
    required this.image,
  });
}

class GardenTile extends StatelessWidget {
  final Garden garden;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  GardenTile({required this.garden, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: Colors.lightGreen[100], // สีพื้นหลังของการ์ด
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(garden.image),
              radius: 30,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    garden.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    garden.time,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '${garden.status} | ${garden.progress}%',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
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
