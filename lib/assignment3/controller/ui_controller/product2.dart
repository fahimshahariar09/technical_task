import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:technical_task/assignment3/controller/api_service/product2.dart';
import 'package:technical_task/assignment3/model/hive_all_product_model.dart';
import 'package:technical_task/setting/internet_checker.dart';

class Product2Controller extends GetxController {
  RxBool isLoading = false.obs;
  RxList<HiveAllProductModel> allProduct2 = <HiveAllProductModel>[].obs;

  // Hive Box
  @override
  void onInit() {
    super.onInit();
    getProduct();
  }

  getProduct() async {
    var box = Hive.box<HiveAllProductModel>('productsBox5');

    if (!await ConnectionChecker.connectionChecker()) {
      EasyLoading.showError("No internet connection. Loading offline data...");

      // Load data from Hive when offline
      allProduct2.value = box.values.toList();
      return;
    }

    try {
      EasyLoading.show(status: "Loading products...");
      isLoading.value = true;

      // Fetch products from API
      List<HiveAllProductModel> fetchedProducts =
          await ProductService2.allProduct2();

      allProduct2.value = fetchedProducts;

      // Save data to Hive
      await box.clear(); // Clear old data
      await box.addAll(fetchedProducts);

      EasyLoading.showSuccess("Products loaded successfully!");
    } catch (e) {
      EasyLoading.showError("Failed to load products: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
