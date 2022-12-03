import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
class ApiBasic{
  var headers={
    "Accept":"application/json",
    "Content-Type":"application/json",

  };
  Future<Map<String,dynamic>> postB(
      {required String url,Map<String,String>headers=const{},Map<String,String> body=const{}, bool isToken=true, onValue=onValue,onError=onError}) async{
   // headers["Accept"]=["application/json"];
    this.headers.addAll(headers);
    return await post(
      Uri.parse( url)
      ,headers: this.headers,
      body: body,
    ).then(onValue).catchError(onError);
  }
  Future<Map<String,dynamic>> deleteB(
      {required String url,Map<String,String> headers=const{},Map<String,String> body=const{}, bool isToken=true, onValue=onValue,onError=onError}) async{
    this.headers.addAll(headers);
    return await delete(
      Uri.parse( url)
      ,headers: this.headers,
      body: body,
    ).then(onValue).catchError(onError);
  }
  Future<Map<String,dynamic>> getB(
      {required String url,Map<String,String> headers=const{},bool isToken=true, onValue=onValue,onError=onError}) async{
    this.headers.addAll(headers);
    return await get(
      Uri.parse( url)
      ,headers: this.headers
    ).then(onValue).catchError(onError);
  }
  static Future<Map<String,dynamic>> onValue(http.Response response)async{
    var result;
    final Map<String,dynamic> responseData= json.decode(response.body);
    if(response.statusCode==200||response.statusCode==201||response.statusCode==202){

      result ={
        'status':true,
        'message':"Successful Request",
        'data':responseData["body"]
      };
    }
    else {
      result ={
        'status':false,
        'message':responseData["msg"],
        'data':responseData
      };
    }
    return result;
  }
  static onError(error){

    return {
      'status':false,
      'message':"Unsuccessful Request",
      'data':error==null?"":error
    };
  }
}