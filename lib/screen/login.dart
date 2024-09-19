import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _emailController;
    var _passwordController;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 75,
                ),
                Container(
                  child: Text(
                    "ลงชื่อเข้าใช้",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(71, 192, 61, 1),
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  child: Text(
                    '\t\t\t\t'"ยินดีตอนรับสู่\nสวนไม้ผลอัจฉริยะ!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 58,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'อีเมล',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 9,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "\t\t\t\t\t                                                ลืมรหัสผ่าน?",
                    style: TextStyle(
                        color: Color.fromRGBO(121, 118, 118, 1), fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 109,
                ),
                Container(
                  height: 65,
                  width: 357,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(71, 192, 61, 1))),
                            
                    onPressed: () {
                      context.router.replaceNamed('/addprofile');
                    },
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 41,
                  width: 357,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(71, 192, 61, 1), // สีกรอบ
                      width: 2.5, // ความหนาของกรอบ
                    ),
                    borderRadius: BorderRadius.circular(10.0), // มุมโค้งมน
                  ),
                  child: Material(
                    color: Colors.white, // สีปุ่ม
                    child: InkWell(
                      onTap: () {
                        context.router.replaceNamed('/createaccount');
                      },
                      child: Center(
                        child: Text('สร้างบัญชี',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 194,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Don\'t have an Account? ' 'Sign up',
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
