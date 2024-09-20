import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddDeviceScreen(),
    );
  }
}

class AddDeviceScreen extends StatefulWidget {
  @override
  _AddDeviceScreenState createState() => _AddDeviceScreenState();
}

class _AddDeviceScreenState extends State<AddDeviceScreen> {
  // Controllers for text input fields
  final TextEditingController _deviceNameController = TextEditingController();
  final TextEditingController _serialNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มอุปกรณ์'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.router.replaceNamed('/addprofile');
            // Back button functionality
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Function to handle image upload
              },
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload, size: 50, color: Colors.grey),
                      SizedBox(height: 8),
                      Text('อัปโหลดรูปภาพ'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _deviceNameController,
              decoration: InputDecoration(
                labelText: 'ชื่ออุปกรณ์',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _serialNumberController,
              decoration: InputDecoration(
                labelText: 'หมายเลขอุปกรณ์',
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(), // This will push the button to the bottom
            ElevatedButton(
              onPressed: () {
                context.router.replaceNamed('/addprofile');
                // Functionality to handle saving
              },
              child: Text('บันทึก'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _deviceNameController.dispose();
    _serialNumberController.dispose();
    super.dispose();
  }
}
