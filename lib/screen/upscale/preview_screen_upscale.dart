import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/UpscaleController.dart';

class PreviewScreen extends StatelessWidget {
  final controller = Get.find<UpscaleController>();

  @override
  Widget build(BuildContext context) {
    final image = controller.pickedImage.value;
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        title: Text(
          "Preview Image",
          style: TextStyle(color: Colors.white), // Title white
        ),
        backgroundColor: Colors.grey[900],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white), // Back icon white
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            image != null
                ? SizedBox(
              height: 300,
              child: Center(child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Expanded(child: Image.file(image,fit: BoxFit.cover,)))),
                )
                : Text(
              "No image selected",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () => controller.upscaleImage(),
              child: Text(
                "Upscale",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
