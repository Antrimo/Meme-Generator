import 'dart:io';

import 'package:flutter/material.dart';

import '../widgets/editImage_viewModel.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key, required this.selectedImage});

  final String selectedImage;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends EditImageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Image"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black87, Colors.black54],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                File(widget.selectedImage),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 400,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => addNewText(context),
        icon: const Icon(Icons.edit),
        label: const Text("Add Text"),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
