import 'package:aiimagegenerator2/comman/Admob/Admob_service.dart';
import 'package:aiimagegenerator2/const.dart';
import 'package:aiimagegenerator2/screen/upscale/pick_image_screen_upscale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:aiimagegenerator2/screen/background_remove_screen.dart';
import 'package:aiimagegenerator2/screen/generate_image.dart';

// class Homescreeen extends StatelessWidget {
//   Homescreeen({super.key});
//
//   final adController = Get.find<AdController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           elevation: 0,
//           title: Text(
//             "AI Image Studio",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22.sp,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.star, color: Colors.yellowAccent),
//               tooltip: "Premium",
//               onPressed: () {
//                 Get.snackbar("Premium", "Upgrade to premium coming soon!");
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.collections, color: Colors.white),
//               tooltip: "My Creations",
//               onPressed: () {
//                 Get.snackbar("My Creations", "This feature is coming soon!");
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.settings, color: Colors.white),
//               tooltip: "Settings",
//               onPressed: () {
//                 Get.snackbar("Settings", "Settings screen coming soon!");
//               },
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 10.verticalSpace,
//                 Center(
//                   child: Text(
//                     "Generate, Upscale & Edit Images",
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.grey.shade400,
//                     ),
//                   ),
//                 ),
//                 30.verticalSpace,
//                 _buildBigFeatureCard(
//                   title: "Generate Image",
//                   description: "Create stunning AI images from text prompts.",
//                   icon: Icons.auto_awesome,
//                   gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurple]),
//                   onTap: () {
//                     Get.to(() => GenerateImage());
//                   },
//                 ),
//                 20.verticalSpace,
//                 _buildBigFeatureCard(
//                   title: "Image Upscale",
//                   description: "Enhance resolution & details of your images.",
//                   icon: Icons.high_quality,
//                   gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent]),
//                   onTap: () {
//                     Get.to(() => PickImageScreen());
//                   },
//                 ),
//                 20.verticalSpace,
//                 _buildSmallFeatureCard(
//                   title: "Background Remover",
//                   icon: Icons.format_paint,
//                   gradient: LinearGradient(colors: [Colors.orange, Colors.deepOrange]),
//                   onTap: () {
//                     Get.to(() => BackgroundRemovePickScreen());
//                   },
//                 ),
//                 10.verticalSpace,
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildBigFeatureCard({
//     required String title,
//     required String description,
//     required IconData icon,
//     required Gradient gradient,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(20.r),
//       child: Container(
//         width: double.infinity,
//         height: 250.h,
//         padding: EdgeInsets.all(20.w),
//         decoration: BoxDecoration(
//           gradient: gradient,
//           borderRadius: BorderRadius.circular(20.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.5),
//               blurRadius: 8,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 150.w,
//               height: 150.w,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(16.r),
//               ),
//               child: Icon(icon, color: Colors.white, size: 65.sp),
//             ),
//             100.horizontalSpace,
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 60.sp,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   6.verticalSpace,
//                   Text(
//                     description,
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(0.85),
//                       fontSize: 40.sp,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18.sp),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSmallFeatureCard({
//     required String title,
//     required IconData icon,
//     required Gradient gradient,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(16.r),
//       child: Container(
//         height: 250.h,
//         width: double.infinity,
//         padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
//         decoration: BoxDecoration(
//           gradient: gradient,
//           borderRadius: BorderRadius.circular(16.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.4),
//               blurRadius: 6,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Icon(icon, color: Colors.white, size: 65.sp),
//             14.horizontalSpace,
//             Expanded(
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 50.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.sp),
//           ],
//         ),
//       ),
//     );
//   }
// }


class Homescreeen extends StatelessWidget {
  const Homescreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.primaryColor,
    body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [

              Text("Visionary",style: TextStyle(color: AppColor.white,fontSize: 70.sp),)
            ],
          )
        ],
      ),
    ),
    );
  }
}
