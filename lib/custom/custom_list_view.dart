import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/camera.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
