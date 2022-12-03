
import 'package:flutter/cupertino.dart';
import 'package:untitled/model/model.dart';

import '../../model/utils/const.dart';
import '../../model/utils/local/storage.dart';
import '../../view/manager/constants/consts_manager.dart';
import '../api/apis/auth_api.dart';
import '../api/message.dart';

class AuthProvider with ChangeNotifier{
  AuthApi _authApi=AuthApi();
  late User user;
  register(context) async{
    var result =await _authApi.register(user);
    /*if(result['status']){
        user= User.fromJson(result['data']);
        await AppStorage.storageWrite(key: AppConstants.isLoginedKEY, value: true);
        await AppStorage.storageWrite(key: AppConstants.idKEY, value: user.userId);
        await AppStorage.storageWrite(key: AppConstants.tokenKEY, value: user.token);
        Advance.isLogined = true;
        /*SendEmail.sendEmail(
            name: user.name,
            to_email: user.email,
            message: "مرحبا بك في تطبيق  \n نتمنى لك تجربة ممتعة ❤️👌"
        );*/
    }*/
    print(result);
  //  Const.TOAST(context,textToast: MessageApi.findTextToast(result['message'].toString()));
    return result;
  }
}