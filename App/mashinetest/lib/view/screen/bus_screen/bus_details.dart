import 'package:flutter/material.dart';

import '../../widget/bus_details/bus_seat_layout1.dart';
import '../../widget/bus_details/bus_seat_layout2.dart';
import '../../widget/bus_details/single_driver_container.dart';


class Bus_Detailslayout2 extends StatelessWidget {
  final String? busName,model,type;
  const Bus_Detailslayout2({super.key,required this.busName,required this.model,required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          centerTitle: true,
          title: Text("$busName $model")
        ),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
           const Padding(
             padding: EdgeInsets.all(20.0),
             child: Single_DriverPost(),
           ),

        
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: type=="1x3"? Bus_seats1x3():Bus_seats2x2(),
              )),
          ),
        ],
      ),),
    );
  }
}