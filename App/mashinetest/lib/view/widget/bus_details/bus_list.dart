import 'package:flutter/material.dart';
import '../../../constants/common/colors.dart';

class Bus_List extends StatelessWidget {
 // ignore: non_constant_identifier_names
 final String name,model;
 // ignore: non_constant_identifier_names
//  final VoidCallback OnTap;
  // ignore: non_constant_identifier_names
  const Bus_List({super.key,required this.name,required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 74,
        width: 335,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10),  
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Row(children: [
                 const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("image 3.png"),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 // ignore: unnecessary_null_comparison
                 name==null?const Text("null"):    Text(name,style: const TextStyle(color: greytextcolor,fontWeight: FontWeight.w500),),
                // ignore: unnecessary_null_comparison
                model==null?const Text("null"):   Text("Licn no: $model",style: const TextStyle(color: greytextcolor,fontWeight: FontWeight.w500),)
                  ],)
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // child: ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: backgroundColor,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(4)),
                ),
                // onPressed: OnTap,
                //  child: const Text("Delete",style: TextStyle(fontWeight: FontWeight.w400),)),
            // )
          // ],
        // ),
     ] ),
    ));
  }
}