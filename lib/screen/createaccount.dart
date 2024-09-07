import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccountScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String _selectedGender = 'เพศชาย';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'สร้างบัญชีสมาชิก',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'ชื่อบัญชีผู้ใช้',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    // Gender Dropdown
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 60, // Adjust the height as necessary
                        child: DropdownButtonFormField<String>(
                          value: _selectedGender,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedGender = newValue!;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: 'เพศ',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          items: <String>['เพศชาย', 'เพศหญิง',]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between the fields
                    // Phone Number Text Field
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 60, // Match the height of the dropdown
                        child: TextField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            labelText: 'เบอร์โทรศัพท์',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'อีเมล',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'ยืนยันรหัสผ่าน',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                // "สมัครสมาชิก" Button
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.router.replaceNamed('/login');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(71, 192, 61, 1),
                          padding:
                              EdgeInsets.symmetric(vertical: 20), // Remove horizontal padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          'สมัครสมาชิก',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // "ฉันมีบัญชีอยู่แล้ว" Button
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Handle already have an account logic here
                        },
                        style: OutlinedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 20), // Remove horizontal padding
                          side: BorderSide(
                              color: Color.fromRGBO(71, 192, 61, 1), width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          'ฉันมีบัญชีอยู่แล้ว',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
