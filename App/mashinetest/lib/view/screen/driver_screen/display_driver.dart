import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../CONTROLLER/bus_controller.dart';
import '../../widget/bottom_appbar_container.dart';
import '../../widget/bus_details/driver_list.dart';
import 'add_driver.dart';

class DisplayDriversList extends StatelessWidget {
  const DisplayDriversList({super.key});
  @override
  Widget build(BuildContext context) {
       final controller = Get.put(Bus_Controller());

    return  GetBuilder(
      init: Bus_Controller(),
      builder: (context) {
        return Scaffold(
          appBar:   PreferredSize(
            preferredSize:const Size.fromHeight(90),
            child: 
            AppBar(
              centerTitle: true,
              title: const Text("Driver List")
            ),
          ),
          body:controller.data==null?const Center(child: CircularProgressIndicator(),): SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
               Padding(
               padding:const  EdgeInsets.all(20.0),
               child: Text("${controller.data!["driver_list"].length} Drivers Found",style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Color.fromRGBO(107, 107, 107, 1)),),
             ),
             const SizedBox(height: 20,),
              
             ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: controller.data!["driver_list"].length,
              itemBuilder: (ctx,index){
                final data =  controller.data!["driver_list"][index];
                return  Drivers_List(name:data["name"] ,license_no: data["license_no"],OnTap:(){
             String driverId = data["id"].toString();
               controller.deleteDriver(driverId: driverId);
                } ,);
              })
          ],),),
               bottomNavigationBar: BottomAppBar_Container(name: "Add Driver", onTap: (){
              Get.to(Add_Driver());
               })
               
        );
      }
    );
  }
}