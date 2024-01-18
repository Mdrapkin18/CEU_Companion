import 'package:flutter/material.dart';
import '../models/ceucourse.dart';

class CEUListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This is a mock list of CEU courses, replace with data from Firebase in the future
    List<CEUCourse> ceuCourses = [];

    return Saffold(
      appBar: AppBar(title: Text('CEU Tracking')),
      body: ListView.builder(
        itemCount: ceuCourses.length,
        builderContext, index) {
          return Card(child: ListTile(title: Text(ceuCourses+index).name));
        },
      ),
    );
  }
}
