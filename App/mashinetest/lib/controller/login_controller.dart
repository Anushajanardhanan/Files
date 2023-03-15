
import 'dart:developer';

import 'package:get/get.dart';

import '../services/login_service.dart';


class Login_Controller extends GetxController{
 
   Login_Service loginService = Login_Service();

    Map<String,dynamic>? user;
         
         
  
   
  
     login({required String username,required String password})async{
   user =await loginService.login(username: username, password: password);
   log(user.toString());
          return user;
     }

      get users{
      return user;
    }
      
}