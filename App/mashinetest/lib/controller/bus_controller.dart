
// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'package:get/get.dart';
import '../services/bus_service.dart';


class Bus_Controller extends GetxController{
   

        Bus_Service busService = Bus_Service();
                Map<String,dynamic>? data;
                Map<String,dynamic>? data2;
                Map<String,dynamic>? addDriverRes;
                Map<String,dynamic>? deleteRes;
final busList = [
    {
      "id":"1",
      "name":"Volvo",
      "model":"Swift Scanio P-series",
      "image":"assets/image 3.png",
      "seat_count":"20",
      "type":"2x2",
      "driver":"389"
    },
    
    {
      "id":"1",
      "name":"KSRTC",
      "model":"Swift Scanio P-series",
      "image":"assets/image 3.png",
      "seat_count":"20",
      "type":"1x3",
      "driver":"389"
    }
];
      get datas{
        return data;
      }
      
                 @override
  void onInit() {
    super.onInit();
    fetchbusList();
    fetchDriversList();
    
  }

        fetchDriversList()async{
        data =await  busService.fetchDrivers();
        update();
         log(data.toString());
        return data;
        }

        addDrivers({required String name,required String mobile,required String license_no})async{
       addDriverRes =   await busService.addDriver(name: name, mobile: mobile, license_no: license_no);
       fetchDriversList();
        }

        deleteDriver({required String driverId})async{
       deleteRes = await busService.deleteDriver(driverId: driverId);
       fetchDriversList();
        }


        
        fetchbusList()async{
        data2 =await  busService.fetchBusList();
        
        update();
         log(data2.toString());
        return data2;
        }
  
}