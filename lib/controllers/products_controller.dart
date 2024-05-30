
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductController {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data.take(10).map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Mahsulotlarni yuklashda xatolik yuz berdi');
    }
  }
}
