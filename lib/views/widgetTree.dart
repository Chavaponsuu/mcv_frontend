import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('My Course')),
    Center(child: Text('Online Courses')),
    Center(child: Text('Evaluation Center')),
    Center(child: Text('Join a Course')),
    Center(child: Text('Back Office')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MyCourseVille',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white, // สีตัวอักษร
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // สีไอคอน leading / actions
        ),
        elevation: 4,
        backgroundColor: const Color(0xFF398ADA), // ใช้สี #398ADA
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF398ADA),
                Color(0xFF2A6EBB), // สีเข้มขึ้นนิดเพื่อ gradient
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                'MyCourseVille',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('My Course'),
              onTap: () {
                setState(() => _selectedIndex = 0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.online_prediction),
              title: const Text('Online Courses'),
              onTap: () {
                setState(() => _selectedIndex = 1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.assessment),
              title: const Text('Evaluation Center'),
              onTap: () {
                setState(() => _selectedIndex = 2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle),
              title: const Text('Join a Course'),
              onTap: () {
                setState(() => _selectedIndex = 3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.admin_panel_settings),
              title: const Text('Back Office'),
              onTap: () {
                setState(() => _selectedIndex = 4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
