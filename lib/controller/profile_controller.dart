import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Consts/consts.dart';

class ProfileController extends GetxController {
  var profileImgPath = ''.obs;

  //text-field

  var namController = TextEditingController();
  var passController = TextEditingController();



  changeImage(context) async {
    try {
      final img = await ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 70);
      if (img == null) return;
      profileImgPath.value = img.path;
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}