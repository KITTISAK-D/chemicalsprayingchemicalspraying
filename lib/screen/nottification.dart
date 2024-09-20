import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()  
class NottificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationSettingsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() =>
      _NotificationSettingsPageState();
}
 
class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool speedWarning = false;
  bool batteryLevelWarning = true;
  bool chemicalVolumeWarning = false;
  bool vehiclePathWarning = true;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.router.replaceNamed('/addprofile');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NotificationSwitch(
              title: 'ข้อแจ้งเตือนความเร็วลม',
              value: speedWarning,
              onChanged: (bool value) {
                setState(() {
                  speedWarning = value;
                });
              },
            ),
            NotificationSwitch(
              title: 'ข้อแจ้งเตือนปริมาณแบตเตอรี',
              value: batteryLevelWarning,
              onChanged: (bool value) {
                setState(() {
                  batteryLevelWarning = value;
                });
              },
            ),
            NotificationSwitch(
              title: 'ข้อแจ้งเตือนปริมาณสารเคมี',
              value: chemicalVolumeWarning,
              onChanged: (bool value) {
                setState(() {
                  chemicalVolumeWarning = value;
                });
              },
            ),
            NotificationSwitch(
              title: 'ข้อแจ้งเตือนเส้นทางการเดินรถ',
              value: vehiclePathWarning,
              onChanged: (bool value) {
                setState(() {
                  vehiclePathWarning = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
 
class NotificationSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
 
  NotificationSwitch({
    required this.title,
    required this.value,
    required this.onChanged,
  });
 
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
      activeColor: Colors.green,  // Set the switch button color to green
    );
  }
}