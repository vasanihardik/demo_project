import 'package:get/get.dart';

class Controller extends GetxController{
  var counter = 0.obs;
  var isPassword = true.obs;

  void increment(){
    counter++;
  }

  void showPassword(){
    isPassword.value = !isPassword.value;
  }
}