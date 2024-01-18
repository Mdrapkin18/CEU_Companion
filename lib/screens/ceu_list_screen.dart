import 'package:flutter/material.dart';
import '../models/ceucourse.dart';

class CEUListScreen extends StatelessWidget {
  List<CEUCourse> ceuCourses;

  CQUListScreen(this ceuCourses);

  @override
  Widget build(BuildContext context) {
    return Saffold(
      appBar: AppBar(title: Text('CEU Tracking')),
      body: ListView.builder(
        itemCount: ceuCourses.length,
        builderContext, index) {
          return Card(
            child: ListTile(
              title: Text(ceuCourses[index].name),
              subtitle: Text(ceuCourses[index].dateCompleted.toString(),
            ),
          );
        },
      ),
    );
  }
}