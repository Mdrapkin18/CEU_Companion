import 'package:flutter/material.dart';

class CEUAddCourseForm extends StatefulWidget {
  @override
  _CEUAddCourseFormState createState() => _CEUAddCourseFormState();
}

class _CEUAddCourseFormState extends State<CEUAddCourseForm> {
  final _formKey = GlobalKey<FormState>();
  // Add more fields as required
  String courseName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New CEU')),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Course Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a course name';
                  }
                  return null;
                },
                onSaved: (value) {
                  courseName = value ?? '';
                },
              ),
              // Add more input fields here
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Save the course data
                  }
                },
                child: Text('Save Course'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
