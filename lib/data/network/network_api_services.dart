import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx_api_seth/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

import '../app_exceptions.dart';

class NetworkApiServices extends BaseApiServices {

  @override
  Future<dynamic> getApi(String url)async{

    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException();
    }on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson ;

  }


  @override
  Future<dynamic> postApi(dynamic data, String url)async{

    if (kDebugMode) {
      print(data);
    }
    dynamic responseJson;
    try{
      final response = await http.post(Uri.parse(url),
      body: jsonEncode(data)
      ).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException();
    }on RequestTimeOut {
      throw RequestTimeOut('');
    }


    return responseJson ;

  }



  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 200:
       throw InvalidDataException();
      default:
        throw FetchDataException("errr Occurred while communicatiing eith server");
    }
  }
}