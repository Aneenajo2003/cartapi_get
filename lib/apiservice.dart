import 'dart:convert';
import 'package:cartget/models/Carts.dart';
import 'package:http/http.dart' as http;
import 'models/Responsemain.dart';

class Apiservice{
  Future<List<Carts>?>fetchdata() async {
    final response=await http.get(Uri.parse('https://dummyjson.com/carts'));
    var jsonn=jsonDecode(response.body);
    var main=Responsemain.fromJson(jsonn);
    var list=main.carts;
    return list;
  }
}