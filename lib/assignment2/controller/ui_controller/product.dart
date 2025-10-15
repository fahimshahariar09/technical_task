import 'package:get/get.dart';
import 'package:technical_task/assignment2/controller/api_service/product.dart';
import 'package:technical_task/assignment2/model/product_model.dart';

class ProductController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ProductModel> product = <ProductModel>[].obs;

  productFun() async {
    isLoading.value = true;
    product.value = await ProductService.fetchProduct();
    isLoading.value = false;
  }

  @override
  void onInit() {
    productFun();
    super.onInit();
  }
}
