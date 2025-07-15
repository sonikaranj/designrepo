import 'dart:convert';
import 'dart:io';
import 'package:aiimagegenerator2/screen/upscale/result_screen_upscale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../screen/upscale/preview_screen_upscale.dart';

class UpscaleController extends GetxController {
  var pickedImage = Rx<File?>(null);
  var resultUrl = ''.obs;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      pickedImage.value = File(image.path);
      Get.to(() => PreviewScreen()); // Go to preview screen
    }
  }

  Future<void> upscaleImage() async {
    if (pickedImage.value == null) {
      Get.snackbar('Error', 'Please select an image first.');
      return;
    }

    Get.dialog(
      Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
    );

    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://api2.pixelcut.app/image/upscale/v1'),
    );

    request.headers.addAll({
      'accept': 'application/json',
      'x-client-version': 'web',
      'x-locale': 'en',
    });

    request.files.add(
      await http.MultipartFile.fromPath('image', pickedImage.value!.path),
    );
    request.fields['scale'] = '2';

    try {
      var response = await request.send();
      var respStr = await response.stream.bytesToString();
      var jsonResp = json.decode(respStr);

      Get.back(); // close loading dialog

      if (jsonResp['result_url'] != null) {
        resultUrl.value = jsonResp['result_url'];
        Get.to(() => ResultScreenUpscale());
      } else {
        Get.snackbar('Error', 'Upscale failed.');
      }
    } catch (e) {
      Get.back(); // close loading dialog
      Get.snackbar('Error', 'Something went wrong: $e');
    }
  }
}
