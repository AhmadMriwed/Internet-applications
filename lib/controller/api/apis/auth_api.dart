import 'package:untitled/controller/api/api_basic.dart';
import 'package:untitled/controller/app_url/app_url.dart';
import 'package:untitled/model/model.dart';

class AuthApi extends ApiBasic{

  Future<Map<String,dynamic>> register(User user) async{
    final result= await postB(url: AppUrl.register,body: user.toJson()["user"],);
    return result;
  }
}