import 'package:aiimagegenerator2/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/background_remove_controller.dart';

class BackgroundRemovePreviewScreen extends StatelessWidget {
  final controller = Get.find<BackgroundRemoveController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        title: Text('Preview Image', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                final file = controller.pickedImage.value;
                if (file != null) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.file(file),
                  );
                } else {
                  return Text('No image selected.', style: TextStyle(color: Colors.white));
                }
              }),
            ),
            Obx(() {
              if (controller.isLoading.value) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Start background removal
                      controller.removeBackground();
                    },
                    icon: Icon(Icons.check),
                    label: Text('Remove Background'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close),
                    label: Text('Cancel'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              );
            }),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
