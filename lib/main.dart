import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        // useMaterial3 is not a valid property for ThemeData
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ... (previous code)

class _MyHomePageState extends State<MyHomePage> {
  String headerText = "";
  String footerText = "";

  late File _image;

  @override
  void initState() {
    super.initState();
    _image = File(
        "path/to/initial/download.jpeg"); // Provide the initial image path here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/meme.png"),
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/download.jpeg"),
          Stack(
            children: [
              Image.file(
                _image,
                height: 300,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Column(
                children: [
                  Text(headerText),
                  const Spacer(),
                  Text(footerText),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (val) {
              setState(() {
                headerText = val;
              });
            },
            decoration: InputDecoration(
              hintText: "Header Text",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (val) {
              setState(() {
                footerText = val;
              });
            },
            decoration: InputDecoration(
              hintText: "Footer Text",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
