import 'package:flutter/material.dart';

void main() {
  runApp(const Latihan2App());
}

class Latihan2App extends StatefulWidget {
  const Latihan2App({super.key});

  @override
  State<Latihan2App> createState() => _Latihan2AppState();
}

class _Latihan2AppState extends State<Latihan2App> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Center(child: Text("Halaman Home", style: TextStyle(fontSize: 22))),
    Center(child: Text("Halaman Profil", style: TextStyle(fontSize: 22))),
    Center(child: Text("Halaman Pengaturan", style: TextStyle(fontSize: 22))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 2',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan 2 - BottomNavigationBar"),
          backgroundColor: Colors.blueAccent,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Pengaturan"),
          ],
        ),
      ),
    );
  }
}
