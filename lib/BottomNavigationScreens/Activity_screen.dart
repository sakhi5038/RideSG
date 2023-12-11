import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade400),
      child: const Center(
          child: Text(
        'Activity Screen',
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
