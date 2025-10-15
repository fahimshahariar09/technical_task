import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_task/assignment2/controller/ui_controller/product.dart';
import 'package:technical_task/assignment2/view/widget/product_view.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Product Screen"),
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Obx(
            () => productController.isLoading.isTrue
                ? Center(child: CircularProgressIndicator())
                : productController.product.isEmpty
                ? Text("Product Not Found !!")
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: productController.product.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ProductView(
                          imageUrl: "${productController.product[index].image}",
                          name: "${productController.product[index].title}",
                          price: "${productController.product[index].price} tk",
                          rating:
                              "${productController.product[index].rating?.rate}",
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
