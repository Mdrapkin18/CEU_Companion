import 'package:flutter/material.dart';

class CEUProgressTrackingView extends StatelessWidget {
  final double progress; // Progress value between 0.0 and 1.0

  CEUProgressTrackingView({required this.progress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CEU Progress')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CEU Progress',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              value: progress,
              strokeWidth: 8.0,
              backgroundColor: Colors.grey[300],
              valueColor:
                  AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
            SizedBox(height: 10),
            Text(
              '${(progress * 100).toStringAsFixed(0)}%',
              style: Theme.of(context).textTheme.headline4,
            ),
            // Additional info or actions can be added here
          ],
        ),
      ),
    );
  }
}
