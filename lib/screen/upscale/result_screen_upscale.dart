import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/UpscaleController.dart';

class ResultScreenUpscale extends StatelessWidget {
  final controller = Get.find<UpscaleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        title: Text(
          "Upscaled Result",
          style: TextStyle(color: Colors.white), // Title white
        ),
        backgroundColor: Colors.grey[900],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white), // Back icon white
      ),
      body: Center(
        child: controller.resultUrl.value.isNotEmpty
            ? Image.network(controller.resultUrl.value)
            : Text(
          "Result image not available.",
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
