import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meme/screens/tests.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.add_circle_outline_sharp),
              iconSize: 100,

              onPressed: () async{
                XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
      
              if(file != null){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TestsM(selectedImage: file.path,)));
              
              }
              }
              
              ),

              Text('Edit Screen'),
          ],
        ),
      ),
      
      drawer: const Drawer(),
    );
  }
}