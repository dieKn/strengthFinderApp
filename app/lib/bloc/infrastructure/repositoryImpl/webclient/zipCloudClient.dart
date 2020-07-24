import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app/bloc/infrastructure/repositoryImpl/webclient/dto/response/ZipCloudResponse.dart';

class ZipCloudClient {
  
  static Future<ZipCloudResponse> fetchAddress(String zipCode) async {
    final url = 'https://zipcloud.ibsnet.co.jp/api/search' + '?zipcode='+zipCode;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final dynamic jsonResponse = json.decode(response.body);
      print(jsonResponse);
      return ZipCloudResponse.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load article');
    }
  }
}