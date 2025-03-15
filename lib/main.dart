import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: const MyHomePage(),
    );
  }
}
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      Icon(Icons.star, color: Colors.red[500]),
      const Text('41'),
    ],
  ),
);

Column buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      ),
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
  ],
);


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Layout Demo')),
      body: Column(
      children: [
        titleSection,
        buttonSection,
        ],
      ),
    );
  }
}
