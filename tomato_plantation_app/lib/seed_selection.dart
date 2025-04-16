import 'package:flutter/material.dart';

class SeedSelection extends StatelessWidget {
  const SeedSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seed selection'),
      ),
      body: const Center(
        child: Text('More information about seed selection'),
      ),
    );
  }
}