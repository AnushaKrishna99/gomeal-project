import 'package:get/get.dart';

class HomeController extends GetxController{
  List<String> options = ["Breakfast","Lunch","Snacks","Dinner"];
  Rx<List<String>> selectedOptionList=Rx<List<String>>([]);
  var selectedOption=''.obs;

  @override
  void onInit(){
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose(){

}
}