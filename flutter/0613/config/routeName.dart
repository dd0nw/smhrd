import 'package:flutter0613/screen/bluePage.dart';
import 'package:flutter0613/screen/greenPage.dart';
import 'package:flutter0613/screen/redPage.dart';

class RouteName{

  // 경로는 변하지 않아야 하므로 const 키워드 사용!
  // static은 해당하는 RouteName 클래스가 사용됨과 동시에 변수에 대한 내용이 초기화되도록 작업!

  static const redPage = '/red';
  static const greenPage = '/green';
  static const bluePage = '/blue';

}

var rn = {
    RouteName.redPage : (context) => RedPage(),
    RouteName.greenPage : (context) => GreenPage(),
    RouteName.bluePage : (context) => BluePage(),
};