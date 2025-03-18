import 'package:flutter/material.dart';
import '../screens/edit_screen.dart';

abstract class EditImageViewModel extends State<EditScreen> {

  TextEditingController textController = TextEditingController();

  addNewText(context) {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Add Text'),
        content: TextField(
          controller: textController,
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
              setState(() {
                textController.text = '';
              });
            },
            child: const Text('Clear'),
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      );
    });
  }
}
