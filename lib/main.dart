import 'package:ceu_companion/models/ceucourse.dart'; // Update the import path
import 'package:ceu_companion/screens/ceu_add_course_form.dart'; // Update the import path
import 'package:ceu_companion/screens/ceu_list_screen.dart';
import 'package:ceu_companion/screens/ceu_progress_tracking_view.dart'; // Update the import path
import 'package:ceu_companion/screens/dashboard_view.dart'; // Update the import path
import 'package:flutter/material.dart';

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

  // Dummy data for CEU courses and progress value.
  // Replace these with your actual data source and calculation logic.
  List<CEUCourse> ceuCourses = []; // Your actual list of CEU courses
  double progressValue = 0.5; // Your actual progress value calculation

  // Converted _widgetOptions to a getter to access instance members.
  List<Widget> get _widgetOptions => <Widget>[
        DashboardView(),
        CEUListScreen(ceuCourses), // Pass the list of courses
        CEUAddCourseForm(),
        CEUProgressTrackingView(
            progress: progressValue), // Pass the progress value
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
        title: Text('CEU Companion'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
