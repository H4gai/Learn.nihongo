import 'package:flutter/material.dart';
import 'package:nihongo_learn/view/main_menu.dart';
import 'package:nihongo_learn/view/wordsheet.dart';
import 'route/route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Sipedal',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.controller,
      home: const MyHomePage(title: 'Mobile Sipedal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int idx = 0;

  static const List<Widget> halaman = [
    const MainMenu(),
    const wordsheet(),
    // Center(child: Text("Dua")),
    // Center(child: Text("Tiga")),
  ];

  void gantiItem(int index) {
    setState(() {
      idx = index;
    });
  }

  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: halaman[idx],
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                child: Center(
                  child:
                  CircleAvatar(
                    backgroundImage: NetworkImage ("http://medialengka.com/profile.jpg"),
                    maxRadius: 50,
                  ),
                )
            ),
            ListTile(
              title: const Text("Logout"),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                gantiItem(2);
              },
            ),
            ListTile(
              title: const Text("Setting"),
              onTap: () {
                gantiItem(1);
              },
            ),
            ListTile(
              title: const Text("Input Medali"),
              onTap: () {
                gantiItem(0);
              },
            ),
            ListTile(
              title: const Text("Page 5"),
              onTap: () {
                gantiItem(3);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.red,
          onTap: onItemTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: " Mendali"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: " Pengaturan"),
          ]),
    );
  }
}
