import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment3/controller/ui_controller/product2.dart';
import 'package:technical_task/assignment3/view/widget/product_view_card.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Product2Controller product2Controller = Get.put(Product2Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text("Product page"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Obx(
            () => product2Controller.isLoading.isTrue
                ? Center(child: CircularProgressIndicator())
                : product2Controller.allProduct2.isEmpty
                ? Text("Product Not Found !!")
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: product2Controller.allProduct2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ProductViewCard(
                          imageUrl:
                              "${product2Controller.allProduct2[index].image}",
                          name:
                              "${product2Controller.allProduct2[index].title}",
                          price:
                              "${product2Controller.allProduct2[index].price} tk",
                          rating:
                              "${product2Controller.allProduct2[index].rating?.rate}",
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
