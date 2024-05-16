import 'dart:io';
import 'package:get/get.dart';
import '../../Consts/consts.dart';
import '../../Widget_common/bg_widget.dart';
import '../../Widget_common/custom_txtfield.dart';
import '../../Widget_common/our_button.dart';
import '../../controller/profile_controller.dart';

class  EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller =    Get.find<ProfileController>();
    // controller.namController.text = data['name'];
    // controller.passController.text = data['password'];

   return bgwidget(
     child: Scaffold(
       resizeToAvoidBottomInset: false,
       appBar: AppBar(),
       body: Obx(() => Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             controller.profileImgPath.isEmpty
             ? Image.asset(imgProfile,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make():Image.file(File(controller.profileImgPath.value),
               width: 100,
               fit: BoxFit.cover,
             ).box.roundedFull.clip(Clip.antiAlias).make(),
             10.heightBox,
             ourButton(color: darkFontGrey,onPress: (){
               controller.changeImage(context);
             },textColor: whiteColor,title: "Change"),
             const Divider(),
             20.heightBox,
             customTextField(controller: controller.namController,hint: namehint,title: name,),
             customTextField(controller: controller.passController,hint: passwordHint,title: password,),
             20.heightBox,
             SizedBox(
               width: context.screenWidth - 60,
                 child: ourButton(color: darkFontGrey,onPress: (){},textColor: whiteColor,title: "Save")),
           ],
         ).box.white.shadowSm.padding(const EdgeInsets.all(16)).margin(const EdgeInsets.only(top: 50,left: 12,right: 12)).rounded.make(),
       ),
     )
   );
  }
}