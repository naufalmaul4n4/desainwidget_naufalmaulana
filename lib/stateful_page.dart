import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_counter', style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () => setState(() => _counter > 0 ? _counter-- : null), icon: const Icon(Icons.remove)),
                TextButton(onPressed: () => setState(() => _counter = 0), child: const Text('Reset')),
                IconButton(onPressed: () => setState(() => _counter++), icon: const Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}