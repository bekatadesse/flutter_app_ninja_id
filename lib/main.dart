import 'package:flutter/material.dart';

void main() {runApp(const MaterialApp(
  home: AppCard(),
));}

class AppCard extends StatelessWidget {
  const AppCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppCard'),
      )
    );
  }
}
