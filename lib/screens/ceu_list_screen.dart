import 'package:flutter/material.dart';

import '../models/ceucourse.dart';

class CEUListScreen extends StatelessWidget {
  final List<CEUCourse> ceuCourses;

  CEUListScreen(this.ceuCourses);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CEU Tracking')),
      body: ListView.builder(
        itemCount: ceuCourses.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(ceuCourses[index].name),
              subtitle: Text(ceuCourses[index].dateCompleted.toString()),
            ),
          );
        },
      ),
    );
  }
}
