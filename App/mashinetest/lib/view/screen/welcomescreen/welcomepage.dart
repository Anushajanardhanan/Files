import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/common/colors.dart';
import '../../widget/bottom_appbar_container.dart';
import '../auth_screen/login_screen.dart';

class Welcome_Page extends StatelessWidget {
  const Welcome_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body:  Center(child: Stack(
        children: [
          Image.asset("assets/moovbe.png"),
          Positioned(
            left: 162,
             top: -5,
            child:  Image.asset("assets/Polygon 1 (1).png",height: 26,width: 24,),)
        ],
      ),),
     
      bottomNavigationBar: BottomAppBar_Container(name: "Get Started", onTap: (){Get.off(const Login_Page());},color: whiteColor,textcolor: redTextColor,)
    );
  }
}