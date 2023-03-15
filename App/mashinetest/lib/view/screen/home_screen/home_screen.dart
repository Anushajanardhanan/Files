import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mashinetest/view/widget/bus_details/bus_list.dart';
import '../../../CONTROLLER/bus_controller.dart';
import '../../../constants/bus_data.dart';
import '../../widget/home/bus_container.dart';
import '../../widget/home/bus_list_container.dart';
import '../../widget/home/driver_container.dart';
import '../driver_screen/display_driver.dart';


class Home_Page extends StatelessWidget {
   Home_Page({super.key});

  bool isloading=true;

  @override
  Widget build(BuildContext context) {
           final controller = Get.put(Bus_Controller());




       


    return  Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          leading: const Text(""),
          centerTitle: true,
          title: Column(
            children: [
              const SizedBox(height: 31,),
              Stack(
        
              children: [
                Image.asset("assets/moovbe.png",height: 26,width: 126,),
                Positioned(
                  left: 97,
                   top: -5,
                  child:  Image.asset("assets/Polygon 1 (1).png",height: 16,width: 14,),)
              ],
        ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(child:
      
       
       Column(
         
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
        Row(children: [
      
            Padding(padding: EdgeInsets.fromLTRB(1, 1, 10, 1)),
                    ContainerImage(image: "assets/image 2.png",name: "Bus",content: "Manage your Bus",),
                    InkWell(
                      onTap: (){
                        Get.to(DisplayDriversList());
                      },
                      child:  Driver_Container(name: "Driver", content: "Manage your Driver", image: "assets/driver.png"))
        ],),
        //  Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: Text("${controller.data2!.length} Buses Found"),       
        // ),

         Padding(
               padding:const  EdgeInsets.all(20.0),
               child: Text("${controller.data2==null?"0":controller.data2!["bus_list"].length} Buses Found",style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Color.fromRGBO(107, 107, 107, 1)),),
             ),
             const SizedBox(height: 20,),
              
            //  ListView.builder(
            //   shrinkWrap: true,
            //   physics: const ScrollPhysics(),
            //   itemCount:  controller.data2==null?0:controller.data2!["bus_list"].length,
            //   itemBuilder: (ctx,index){

            //     print(controller.data2!["bus_list"].length.toString()+" length");
            //     final data2 =  controller.data2!["bus_list"][index];
            //     return  Bus_List(name:data2["name"]==null?"": data2["name"],model: data2["model"]
            //     // {
            // //  String driverId = data["id"].toString();
            // //    controller.deleteDriver(driverId: driverId);
            // //     } ,);
            //   ); }),
        const SizedBox(height: 20,),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: busList.length,
          itemBuilder: (ctx,index){
            final data = busList[index];
            return  BuslistContainer(busName:data["name"],model: data["model"],type: data["type"],);
          })
      ],),)
    );
    }
}
