import 'package:get/get.dart';
import 'package:hervana/navbar/herbpage.dart';

import '../navbar/clinicpage.dart';
import '../navbar/listpage.dart';

class BottomNavigationBarController extends GetxController{
  RxInt index = 0.obs;

  var pages = [
    // const HomePage(),
    HerbPage(),
    const ListPage(),
    const ClinicPage()
  ];
}

