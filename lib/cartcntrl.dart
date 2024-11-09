import 'package:cartget/models/Carts.dart';
import 'package:get/get.dart';

import 'apiservice.dart';

class Cartcntrl extends GetxController{
  List<Carts>plist=<Carts>[].obs;
  Future<void> GetP() async {
    Apiservice apiservice=Apiservice();
    var s =(await apiservice.fetchdata())!;
    plist?.addAll(s as Iterable<Carts>);
    print("Api called");
    update();
  }

}