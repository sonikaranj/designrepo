import 'package:aiimagegenerator2/controller/UpscaleController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickImageScreen extends StatelessWidget {
  final controller = Get.put(UpscaleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        title: Text(
          "Pick Image",
          style: TextStyle(color: Colors.white), // Title text white
        ),
        backgroundColor: Colors.grey[900],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white), // Back icon white
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            controller.pickImage();
          },
          child: Text(
            "Select Image from Gallery",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
