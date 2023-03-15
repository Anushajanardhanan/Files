import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/login_controller.dart';
import '../../widget/bottom_appbar_container.dart';
import '../../widget/cm_textfield.dart';
import '../home_screen/home_screen.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Login_Controller());

    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color.fromRGBO(0x0000002b, 43, 43, 1),
                    height: 266,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("assets/loginpage1.png")),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 100,
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                  child: Column(
                children: [
                  CMTextField(
                      hintText: "",
                      labelText: "Username",
                      controller: usernamecontroller),
                  const SizedBox(
                    height: 20,
                  ),
                  CMTextField(
                    hintText: "",
                    labelText: "Password",
                    controller: passwordcontroller,
                    obscureText: true,
                  )
                ],
              )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar_Container(
            name: "Login",
            onTap: () async {
              await controller.login(
                  username: usernamecontroller.text,
                  password: passwordcontroller.text);

                  
              if (controller.user!["status"] == false) {
                if (controller.user!["message"] == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Fill Required Fields")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Login Failed : ${controller.user!["message"]}")));
                }
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "Login Success : ${controller.user!["message"]}")));
                Get.to(()=> Home_Page());
              }
            })
        
        );
  }
}
