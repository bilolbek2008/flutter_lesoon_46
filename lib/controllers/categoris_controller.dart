import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/categoris.dart';

class CategoryController {
  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('https://api.escuelajs.co/api/v1/categories'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.take(10).map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
