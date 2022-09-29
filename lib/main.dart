import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/setting.dart';

void main() {
  runApp(const MyAppState());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: const MyAppState(),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({super.key});

  @override
  State<MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  int _selectTab = 0;

  List<Widget> tabs = const [HomeScreen(), SettingScreen()];

  void _handleTab(int index) {
    setState(() {
      _selectTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: tabs[_selectTab],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _handleTab,
          currentIndex: _selectTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Setting",
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
