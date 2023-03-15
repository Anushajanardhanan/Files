import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../CONTROLLER/bus_controller.dart';
import '../../widget/bottom_appbar_container.dart';
import '../../widget/cm_textfield.dart';

class Add_Driver extends StatelessWidget {
  const Add_Driver({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Bus_Controller()); 
       final TextEditingController namecontroller = TextEditingController();
      final TextEditingController licenseNumbercontroller = TextEditingController();
   
    return  Scaffold(
        appBar:   PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          centerTitle: true,
          title: const Text("Add Driver")
        ),
      ),
      body: SingleChildScrollView(child: Column(
       
        children: [
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(child: Column(
            children: [
              CMTextField(hintText: "", labelText: "Enter Name", controller: namecontroller),
              const SizedBox(height: 20,),
              CMTextField(hintText: "", labelText: "Enter License Number", controller: licenseNumbercontroller)
            ],
          )),
        )
      ],),),
      bottomNavigationBar: BottomAppBar_Container(name: "Save",onTap: ()async{
       await controller.addDrivers(name: namecontroller.text, mobile: "9746263704", license_no: licenseNumbercontroller.text);
       log(controller.addDriverRes.toString());
         Get.back();
        },),
    );
  }
}