import 'package:get/get.dart';

class ProductScreenController extends GetxController {

  RxBool showCredit = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  changeCredit() {
    ///when credit value is false it will store true
    ///when credit value is true it will store false
    showCredit.value = showCredit.value == false;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
