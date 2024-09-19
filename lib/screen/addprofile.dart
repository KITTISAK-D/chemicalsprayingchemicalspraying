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
    Garden(name: 'สวนมังคุด', status: 'ออนไลน์', time: '80 ชั่วโมง 5:49s', progress: 40),
    Garden(name: 'สวนทุเรียน', status: 'ออนไลน์', time: '80 ชั่วโมง 5:49s', progress: 40),
    Garden(name: 'สวนลำไย', status: 'ออนไลน์', time: '80 ชั่วโมง 5:49s', progress: 40),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สวนของฉัน'),
      ),
      body: ListView.builder(
        itemCount: gardens.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(gardens[index].name),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              setState(() {
                gardens.removeAt(index);
              });
            },
            child: GardenTile(
              garden: gardens[index],
              onEdit: () {
                
              },
              onDelete: () {
                setState(() {
                  gardens.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.replaceNamed('/ปุ่มเพิ่มอุปกรณ์');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Garden {
  final String name;
  final String status;
  final String time;
  final int progress;

  Garden({
    required this.name,
    required this.status,
    required this.time,
    required this.progress,
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
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/garden_image.png'), // Replace with actual image path
        ),
        title: Text(garden.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(garden.time),
            Text('${garden.status} | ${garden.progress}%'),
          ],
        ),
        trailing: Wrap(
          spacing: 12, // Space between edit and delete buttons
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                          context.router.replaceNamed('แก้ไขโปรไหล์อุปกรณ์');
                          // Handle already have an account logic here
                        },
            ),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class EditGardenPage extends StatelessWidget {
  final Garden garden;

  EditGardenPage({required this.garden});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit ${garden.name}'),
      ),
      body: Center(
        child: Text('Editing ${garden.name}'),
      ),
      
    );
  }
}
