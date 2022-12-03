
import 'package:flutter/cupertino.dart';
import 'package:untitled/controller/api/apis/test_api.dart';
import 'package:untitled/model/model.dart';

import '../../model/utils/const.dart';
import '../../model/utils/local/storage.dart';
import '../../view/manager/constants/consts_manager.dart';
import '../api/apis/auth_api.dart';
import '../api/message.dart';

class TestProvider with ChangeNotifier{
  TestApi _testApi=TestApi();
  load(context) async{
    var result =await _testApi.load();
    print(result);
  //  Const.TOAST(context,textToast: MessageApi.findTextToast(result['message'].toString()));
    return result;
  }
}