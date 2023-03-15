import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mashinetest/constants/common/colors.dart';
import 'package:mashinetest/services/refresh_token_service.dart';
import 'package:mashinetest/view/screen/welcomescreen/welcomepage.dart';

final apiProvider = Provider((ref) => Api());

void main() async{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  Theme.of(context).copyWith(
  colorScheme: Theme.of(context).colorScheme.copyWith(
        primary:  primaryColor,
      ),
),
      home: const Welcome_Page()
    );
  }
}
