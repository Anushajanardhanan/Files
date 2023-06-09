import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants/common/colors.dart';

class Driver_Container extends StatelessWidget {
  final String name, content, image;
  const Driver_Container({
    Key? key,
    required this.name,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height/3.5,
        width: MediaQuery.of(context).size.width/2.5,
        decoration: BoxDecoration(
        
            borderRadius: BorderRadius.circular(15), color: primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(name,
                        style: const TextStyle(fontSize: 35, color: textColorWhite,fontWeight: FontWeight.w700)),
                    Text(content,
                        style: const TextStyle(fontSize: 14, color: textColorWhite,fontWeight: FontWeight.w400)),
                  ])),
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  image,
                 height: MediaQuery.of(context).size.height/3.5/1.99,
                 width: MediaQuery.of(context).size.width/3,
                ))
          ],
        ),
      ),
    );
  }
}
