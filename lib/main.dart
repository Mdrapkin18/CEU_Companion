import 'package:flutter/material.dart';
import 'screens/ceu_add_course_form.dart';
import 'screens/ceu_detail_screen.dart';
import 'models/ceucourse.dart';
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
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        useMaterial3: true,
      ),
      home: DashboardView(),
    );
  }
}