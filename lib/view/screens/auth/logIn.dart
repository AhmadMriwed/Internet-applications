import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/view/manager/constants/const.dart';
import 'package:untitled/view/resource/color.dart';
import 'package:untitled/view/screens/auth/signIn.dart';


import '../../../controller/provider/auth_provider.dart';
import '../../../model/model.dart';
import '../../../model/utils/const.dart';
import '../home/home.dart';
import 'package:provider/provider.dart';
class login extends StatefulWidget {

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
   String email= "" ;
   String passwordValue= "";

  var formkey=GlobalKey<FormState>();
  late AuthProvider _authProvider;
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
    _authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        centerTitle: true,
        title:Text(
          " تطبيقات الانترنت ",
          style: TextStyle (color: ColorManager.white

        ),
        ),
      ),
      body :Center(
        child: Container(
          color: Colors.pinkAccent[50],
        child:Padding(
          padding: const EdgeInsets.all(AppSize.s20),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column
              (
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: 100.0,),
                Center(
                  child: Text("Welcome back ",
                   style: TextStyle(
                     fontSize: AppSize.s40,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,

                   ),
                  ),
                ),
                SizedBox(height: AppSize.s80,),
               Text("Enter your email : ",
                 style: TextStyle(
                   fontSize: 25.0,
                 ),
               ),
              SizedBox(height: AppSize.s20,),
                TextFormField(
                  onFieldSubmitted: ( email){
                    print(email);

                  },
                  onChanged: (val){
                    email=val;
                  },
                  decoration: InputDecoration(
                    labelText: "email",
                    border:OutlineInputBorder(

                    ) ,
                    prefixIcon: Icon(
                      Icons.email,
                    ),


                    ),
                  validator:(email){
                    if (email!.isEmpty){

                      return 'email must not be empty';
                    }
                    return null;
                  } ,
                  ),

                SizedBox(height: AppSize.s60,),
                Text("Enter your password :",
                  style: TextStyle(
                    fontSize: 30.0
                  ),
                ),
                SizedBox(height: AppSize.s20,),
                 Row(
                children:
                 [
                   Expanded(
                     child: TextFormField(
                       onFieldSubmitted: ( passwordValue){
                         print(passwordValue);

                       },onChanged: (val){
                         passwordValue=val;
                     },

                       validator:(passwordValue){
                         if (passwordValue!.isEmpty){

                           return 'password must not be empty';
                         }
                         return null;
                       } ,

                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _obscureText,
                      decoration: InputDecoration(

                       suffixIcon: IconButton(
                       icon :Icon( Icons.remove_red_eye,),
                      onPressed: (){
                         setState(() {
                            _toggle();

                         });
                      }

                    ),
                  labelText: "password",
                  border: OutlineInputBorder(),


                  ),

                 ),
                   ),

               ] ),
                SizedBox(height: AppSize.s20,),
                // ignore: deprecated_member_use
                TextButton(
                  onPressed: (){
                  },
                  child: Text(
                    'Forgot your Password ? ',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),

                SizedBox(height: AppSize.s30,),
                Center(
                  child: Container(
                    //color: Colors.black45,
                    width: 260.0,
                    height: 70.0,
                     decoration: BoxDecoration( color: Colors.black45,
                       borderRadius: BorderRadius.circular(45.0)
                     ),
                    //alignment: Alignment.center,
                    child: MaterialButton(

                      child: Text("login",
                      style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                      ),
                      onPressed: () async {
                        if (formkey.currentState!.validate()){
                        _authProvider.user=User(firstName: "", lastName: "", email: email, userName: "",password: passwordValue);
                        Const.LOADIG(context);
                        var result=await _authProvider.login(context);
                        Navigator.of(context).pop();
                        if(result['status']){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Home()),
                          );
                        }}

                      },
                    ),
                  ),
                ),
                SizedBox(height:AppSize.s10,),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SignIn()),
                    );
                  },
                  child: Text(
                    'Sign up ',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),

              ],
    ),
          ),
        ),
        ),
        ),
      ),

      );






  }
}
