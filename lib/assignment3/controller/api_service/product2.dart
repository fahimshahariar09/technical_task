import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:technical_task/api/api.dart';
import 'package:technical_task/assignment3/model/hive_all_product_model.dart';

class ProductService2 {
  static Future<List<HiveAllProductModel>> allProduct2() async {
    List<HiveAllProductModel> allProduct = [];

    try {
      var response = await http.get(Uri.parse(Api.productApi));

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);

        for (var data in json) {
          allProduct.add(HiveAllProductModel.fromJson(data));
        }
      }
      return allProduct;
    } catch (e) {
      log("Error fetching products: $e");
      return [];
    }
  }
}
