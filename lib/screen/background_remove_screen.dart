import 'package:aiimagegenerator2/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/background_remove_controller.dart';

class BackgroundRemovePickScreen extends StatelessWidget {
  final controller = Get.put(BackgroundRemoveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(actionsIconTheme: IconThemeData(color: AppColor.white),leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios,color: AppColor.white,size: 50.sp,)),title: Text('Pick Image',style: TextStyle(color: AppColor.white),),backgroundColor: AppColor.black,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton.icon(
                  onPressed: controller.pickImage,
                  icon: Icon(Icons.image),
                  label: Text('Pick Image'),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
