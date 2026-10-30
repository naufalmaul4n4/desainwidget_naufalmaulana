import 'package:flutter/material.dart';
import 'stateless_page.dart';
import 'stateful_page.dart';

void main() => runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()));

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  final _pages = const [StatelessPage(), StatefulPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Counter'),
        ],
      ),
    );
  }
}