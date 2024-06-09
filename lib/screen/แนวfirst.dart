/*import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 305,
                width: 275,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/image/image.png'))),
              ),
              Container(
                child: Text(
                  "One Stop Solution\n" "\t\t\tfor your Crops",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35),
                ),
              ),
              SizedBox(
                height: 173,
              ),
              Container(
                height: 60,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(71, 192, 61, 1), // สีกรอบ
                    width: 2.0, // ความหนาของกรอบ
                  ),
                  borderRadius: BorderRadius.circular(10.0), // มุมโค้งมน
                ),
                child: Material(
                  color: Color.fromRGBO(71, 192, 61, 1), // สีปุ่ม
                  child: InkWell(
                    onTap: () {
                      context.router.replaceNamed('/register');
                    },
                    child: Center(
                      child: Text('Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(71, 192, 61, 1), // สีกรอบ
                    width: 2.0, // ความหนาของกรอบ
                  ),
                  borderRadius: BorderRadius.circular(10.0), // มุมโค้งมน
                ),
                child: Material(
                  color: Colors.white, // สีปุ่ม
                  child: InkWell(
                    onTap: () {
                      context.router.replaceNamed('/ใส่หน้าที่จะไป');
                    },
                    child: Center(
                      child: Text('Sign up',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/