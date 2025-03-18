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
      body: Image.file(File(widget.selectedImage)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addNewText(context),
        child: const Icon(Icons.edit),
      ),
    );
  }
}