
import 'package:get/get.dart';
import '../../Consts/consts.dart';
import '../../Widget_common/bg_widget.dart';
import '../../controller/product_controller.dart';
import 'item_details.dart';

class CategoriesDetails extends StatelessWidget {
  final String? title;
  const CategoriesDetails({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProductController>();

  return bgwidget(
    child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body:  Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(controller.subcat.length, (index) =>
                 "${controller.subcat[index]}"
                          .text
                    .size(12)
                    .fontFamily(semibold)
                    .color(darkFontGrey)
                .makeCentered().box.white.rounded.size(120, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()
                ),
              )
            ),

            //items Container
            20.heightBox,

            Expanded(child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,crossAxisSpacing: 8), itemBuilder: (context,index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imgP5,
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    "Apple Airpods Pro 2" .text.fontFamily(semibold).color(darkFontGrey).make(),
                    10.heightBox,
                    "\$80" .text.fontFamily(bold).color(Colors.black).size(16).make()
                  ],
                ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make().onTap(() {
                  Get.to(() => const ItemDetails(title: "Dummy item" ));
                });
            }))
          ],
        ),
      ),
    )
  );
  }

}