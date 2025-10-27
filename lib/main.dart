import 'package:flutter/material.dart';

void main() {
  runApp(const Latihan3App());
}

class Latihan3App extends StatelessWidget {
  const Latihan3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 3',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan 3 - Drawer"),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text(
                  "Menu Utama",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profil"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Pengaturan"),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Tentang"),
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            "Selamat datang di Latihan 3!",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
