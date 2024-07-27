import 'package:auto_route/auto_route.dart';
import 'package:chemicalspraying/components/cardInfo.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DashboardPage(),
      debugShowCheckedModeBanner: false, // เพิ่มบรรทัดนี้
    );
  }
}

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool savingMode = true;
  bool settingSpraying = true;
  bool chemicalSavingMode = true;
  double sprayLevel = 2.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              context.router.replaceNamed('/setting');
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        
                        // CircularProgressIndicator(
                        //   value: 4.23 / 10, // Adjust value as needed
                        //   strokeWidth: 60,
                        //   backgroundColor: Colors.grey.shade300,
                        //   valueColor:
                        //       AlwaysStoppedAnimation<Color>(Colors.green),
                        // ),
                        // Text(
                        //   '4.23\nkm/s',
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //       fontSize: 24, fontWeight: FontWeight.bold),
                        // ),
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 196, 132),
                            borderRadius: BorderRadius.circular(90)
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(60)
                          ),
                          child: Center(child: Text("10 %"))
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // InfoCard(
                        //   title: 'Battery',
                        //   value: '80%',
                        //   color: Colors.green,
                        //   hasToggle: false,
                        //   toggleLabel: ' ',
                        //   onSwitchChanged: (value) {
                        //     setState(() {
                        //       savingMode = value;
                        //     });
                        //   },
                        // ),
                        CSCCardInfo(
                          child: Text("111"),
                          width: 200,
                        ),
                        CSCCardInfo(
                          title: "test",
                          child: Text("22"),
                        ),
                        CSCCardInfo(
                          child: Text("33"),
                        ),

                        InfoCard(
                          title: 'Setting Spraying',
                          value: 'Level ${sprayLevel.toInt()}',
                          color: Colors.green,
                          hasToggle: false,
                          additionalInfo: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('ON'),
                                  Switch(
                                    value: settingSpraying,
                                    onChanged: (bool value) {
                                      setState(() {
                                        settingSpraying = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Slider(
                                value: sprayLevel,
                                min: 1,
                                max: 3,
                                divisions: 2,
                                label: sprayLevel.toInt().toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    sprayLevel = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          status: 'Working Status',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InfoCard(
                          title: 'Total Location',
                          value: '10 Km',
                          color: Colors.blue,
                          hasToggle: false,
                        ),
                        InfoCard(
                          title: 'Chemical Level',
                          value: '50%',
                          color: Colors.green,
                          hasToggle: false,
                          toggleLabel: ' ',
                          switchValue: chemicalSavingMode,
                          onSwitchChanged: (value) {
                            setState(() {
                              chemicalSavingMode = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.replaceNamed('/addprofile');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final bool hasToggle;
  final String? toggleLabel;
  final Widget? additionalInfo;
  final String? status;
  final bool? switchValue;
  final ValueChanged<bool>? onSwitchChanged;

  const InfoCard({
    required this.title,
    required this.value,
    required this.color,
    required this.hasToggle,
    this.toggleLabel,
    this.additionalInfo,
    this.status,
    this.switchValue,
    this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: color),
          ),
          if (status != null) ...[
            SizedBox(height: 5),
            Text(
              status!,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
          if (additionalInfo != null) ...[
            SizedBox(height: 10),
            additionalInfo!,
          ],
          if (hasToggle) ...[
            SizedBox(height: 10),
            Text(
              toggleLabel!,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Switch(
              value: switchValue ?? false,
              onChanged: onSwitchChanged,
            ),
          ],
        ],
      ),
    );
  }
}
