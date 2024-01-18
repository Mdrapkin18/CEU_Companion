import 'package:flutter/material.dart';

import '../models/ceucourse.dart';

class CEUDetailScreen extends StatelessWidget {
  final CEUCourse course;

  CEUDetailScreen(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.name)),
      body: Column(
        children: [
          Text('Course Name: ' + course.name),
          Text('Date Completed: ' + course.dateCompleted.toString()),
          Text('Number of Units: ' + course.numberOfUnits.toString()),
          // Add more fields as needed
          ElevatedButton(
            onPressed: () {
              // Edit course logic
            },
            child: Text('Edit'),
          ),
          ElevatedButton(
            onPressed: () {
              // Delete course logic
            },
            child: Text('Delete'),
          ),
        ],
      ),
    );
  }
}
