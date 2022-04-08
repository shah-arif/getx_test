import 'package:get/get.dart';
import 'package:getx_test/first_screen.dart';
import 'package:getx_test/second_screen.dart';

const String firstScreen = '/first-screen';
const String secondScreen = '/second-screen';

List<GetPage> getPages = [
  GetPage(
      name: firstScreen, page: ()=>FirstScreen(),transition: Transition.rightToLeft
  ),
  GetPage(
      name: secondScreen, page: ()=>SecondScreeen(),transition: Transition.rightToLeft
  ),
];