import 'package:auto_route/auto_route.dart';
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
      debugShowCheckedModeBanner: false,
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.router.replaceNamed('/login');
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
        child: Column(
          children: [
            // Top Circular Speed Indicator
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Background Circle
                  Container(
                    width: 220,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.shade100,
                      border: Border.all(color: Colors.green.shade200, width: 8),
                    ),
                  ),
                  // Circular Progress Indicator
                  CircularProgressIndicator(
                    value: 4.23 / 10, // Adjust value as needed
                    strokeWidth: 16,
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                  // Speed Text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4.23',
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'km/s',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // Info Cards Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InfoCard(
                  title: 'แบตเตอรี่',
                  value: '80%',
                  color: Colors.green,
                  hasVerticalBar: true,
                  progressValue: 0.8,
                ),
                InfoCard(
                  title: 'ตั้งค่าระบบฉีดพ่น',
                  value: 'เปิด',
                  color: Colors.green,
                  hasToggle: true,
                  switchValue: settingSpraying,
                  onSwitchChanged: (bool value) {
                    setState(() {
                      settingSpraying = value;
                    });
                  },
                  additionalInfo: Column(
                    children: [
                      Text(
                        'ระดับที่ ${sprayLevel.toInt()}',
                        style: TextStyle(fontSize: 16, color: Colors.black),
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
                  status: 'สถานะการทำงาน',
                ),
              ],
            ),
            SizedBox(height: 15),
            // Info Cards Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InfoCard(
                  title: 'เส้นทางการทำงานทั้งหมด',
                  value: '10 Km',
                  color: Colors.blue,
                  linkText: 'ตั้งค่าเส้นทาง',
                ),
                InfoCard(
                  title: 'ปริมาณสารเคมี',
                  value: '50%',
                  color: Colors.green,
                  hasVerticalBar: true,
                  progressValue: 0.5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final bool hasToggle;
  final bool hasVerticalBar;
  final double? progressValue;
  final String? toggleLabel;
  final String? linkText;
  final Widget? additionalInfo;
  final String? status;
  final bool? switchValue;
  final ValueChanged<bool>? onSwitchChanged;

  const InfoCard({
    required this.title,
    required this.value,
    required this.color,
    this.hasToggle = false,
    this.hasVerticalBar = false,
    this.progressValue,
    this.toggleLabel,
    this.linkText,
    this.additionalInfo,
    this.status,
    this.switchValue,
    this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          if (hasVerticalBar) ...[
            Container(
              height: 120,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 120 * (progressValue ?? 0.0),
                    width: 50,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: color),
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
            Switch(
              value: switchValue ?? false,
              onChanged: onSwitchChanged,
            ),
          ],
          if (linkText != null) ...[
            Text(
              linkText!,
              style: TextStyle(fontSize: 14, color: Colors.green),
            ),
          ],
        ],
      ),
    );
  }
}
