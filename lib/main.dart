import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.lightGreenAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [Icon(Icons.people_alt_rounded), Text("Contacts")],
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("CAll Obama"),
                trailing: Text("1"),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("CAll Hasina"),
                trailing: Text("12"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('AdvanceUI'),
          backgroundColor: Colors.teal,
        ),
        body: Center(child: Text('Tanvir')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
