import 'package:untitled/controller/api/api_basic.dart';
import 'package:untitled/controller/app_url/app_url.dart';
import 'package:untitled/model/model.dart';
import 'package:untitled/view/screens/auth/logIn.dart';

class AuthApi extends ApiBasic{

  Future<Map<String,dynamic>> register(User user) async{
    final result= await postB(url: AppUrl.register,body: user.toJson()["user"],);
    return result;
  }
  Future<Map<String,dynamic>> login(User user) async{
    final result= await postB(url: AppUrl.login,body: {
      "userOrEmail": user.email,
      "password": user.password
    },);
    return result;
  }

}