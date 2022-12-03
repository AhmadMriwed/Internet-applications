import 'package:untitled/controller/api/api_basic.dart';
import 'package:untitled/controller/app_url/app_url.dart';
import 'package:untitled/model/model.dart';

class TestApi extends ApiBasic{

  Future<Map<String,dynamic>> load() async{
    final result= await getB(url: AppUrl.load);
    return result;
  }
}