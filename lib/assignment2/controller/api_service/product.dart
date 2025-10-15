import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:technical_task/api/api.dart';
import 'package:technical_task/assignment2/model/product_model.dart';

class ProductService {
  static Future<List<ProductModel>> fetchProduct() async {
    List<ProductModel> product = [];
    try {
      var response = await http.get(Uri.parse(Api.productApi));
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        for (var data in json) {
          ProductModel productModel = ProductModel.fromJson(data);
          product.add(productModel);
        }
      }
      return product;
    } catch (e) {
      log("error $e");
    }
    return [];
  }
}
