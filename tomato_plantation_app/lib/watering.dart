import 'package:flutter/material.dart';

class WateringSchedule extends StatelessWidget {
  const WateringSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watering schedule'),
      ),
      body: const Center(
        child: Text('More information about watering'),
      ),
    );
  }
}