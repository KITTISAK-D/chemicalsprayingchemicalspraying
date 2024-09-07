import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                width: 362,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(71, 192, 61, 1))),
                  onPressed: () {
                    context.router.replaceNamed('/login');
                  },
                  child: Text(
                    "GET START",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
