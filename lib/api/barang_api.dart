import 'dart:convert';

import 'package:warehouse_project/model/barang_model.dart';
import 'package:http/http.dart' as http;

class ApiBarang {
  // static const baseUrl = 'http://10.0.2.2:4000/api/getdata';
  static const baseUrl = 'http://192.168.18.17:4000/api/getdata';


  Future<List<Barang>> getBarang() async {
    final response = await http.get(Uri.parse("$baseUrl"));
    if (response.statusCode == 200) {
       Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> data = json['data'];
      return data.map((itemJson) => Barang.fromJson(itemJson)).toList();
    } else {
      throw Exception('Gagal Get Data');
    }
  }
}
