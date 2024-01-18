import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CEU Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to your CEU Dashboard',
                style: Theme.of(context).textTheme.titleLarge),
            // Add overview widgets here, e.g., next course, progress summary
          ],
        ),
      ),
    );
  }
}
