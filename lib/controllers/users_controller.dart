import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/users.dart';

class UserController {
  Future<List<User>> fetchUsers() async {
    final response =
    await http.get(Uri.parse('https://api.escuelajs.co/api/v1/users'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.take(3).map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
