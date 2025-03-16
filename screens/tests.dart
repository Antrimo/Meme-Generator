import 'package:flutter/material.dart';

class TestsM extends StatefulWidget {
  const TestsM({super.key, required this.selectedImage});

  final String selectedImage;

  @override
  State<TestsM> createState() => _TestsMState();
}

class _TestsMState extends State<TestsM> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}