import 'package:flutter/material.dart';

import 'screens/ceu_add_course_form.dart';
import 'screens/ceu_list_screen.dart';
import 'screens/ceu_progress_tracking_view.dart';
import 'screens/dashboard_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEU Companion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<CEUCourse> ceuCourses = []; // Replace with actual data source
  final double progressValue = 0.5; // Replace with actual progress calculation

  static List<Widget> _widgetOptions(BuildContext context) => <Widget>[
        DashboardView(),
        CEUListScreen(), // Assuming CEUListScreen() takes no parameters now
        CEUAddCourseForm(),
        CEUProgressTrackingView(progress: progressValue),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CEU Companion'),
      ),
      body: Center(
        child: _widgetOptions(context).elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'CEUs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add CEU',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Progress',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
