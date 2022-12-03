

class Advance {
  static bool theme = false;
  static bool language = false;
  static bool isRegisterKEY = false;
  static bool isLogined = false;
  static String token = "";
  static String uid = "";
  static String avatarImage = "";
}

//User
class User{
  String firstName;
  String lastName;
  String name;
  String? password;
  String userName;
  int id;
  String email;
  String? token ;
 User({ this.name = "",
   required this.firstName,
   required this.lastName,
   this.id = 0,
   required this.email,
    this.password= "",
   this.token = "",
   required this.userName}
     );
  factory User.fromJson(Map<String,dynamic> json){
    Map<String,dynamic> userMap=json["user"];
    return User(
      firstName: userMap["firstName"],
      lastName: userMap["lastName"],
      id: userMap["id"],
      email: userMap["email"],
      password: userMap["password"],
      userName: userMap["userName"],
      token: json["token"],
    );
  }
  toJson(){
    return {
      "user": {
        'firstName':firstName,
        'name':name,
        'lastName':lastName,
        'userId':id,
        'email':email,
        'password':password,
        'userName':userName,
      },
        'token':token
    };
  }
  factory User.get(){
    return User(
      firstName: '',
      lastName: '',
      id:0,
      email: '',
      password: '',
      userName: '',
      token: '',
    );
  }
}

class Model{


}