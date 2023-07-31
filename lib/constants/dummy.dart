import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Toggle Example'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: Container(
                      color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Container 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    child: Container(
                      color: _currentIndex == 1 ? Colors.blue : Colors.grey,
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Container 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            IndexedStack(
              index: _currentIndex,
              children: [
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Widget 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Widget 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
