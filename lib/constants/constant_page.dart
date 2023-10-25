import 'package:get/get.dart';
import 'package:gomeal/pages/dashboardpage.dart';
import 'package:gomeal/pages/favorite_page.dart';
import 'package:gomeal/pages/food_order_page.dart';
import 'package:gomeal/pages/oredrsPage.dart';
import 'package:gomeal/pages/setting_page.dart';
import '../allfiles/menu_pages.dart';
import '../allfiles/msg_page/message_page.dart';
import '../message_pages/message_pages.dart';
import '../pages/bill_page.dart';
import '../pages/prepare_to_eat.dart';
import '../practice_page.dart';

class SideBarController extends GetxController{

  RxInt index = 0.obs;

  var pages =[
    DashboardPage(),
    FavoritePage(),
    FoodOrderPage(),
    OrderPage(),
    SettingsPage(),
    BillPage(),
    MessagePage(),
    MessagePages(),
    MenuPageWidget(),
    MenuPages(),
    PrepareToEat(),
  ];
}