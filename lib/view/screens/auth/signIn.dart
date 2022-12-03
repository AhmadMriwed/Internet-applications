import 'package:flutter/material.dart';
import 'package:untitled/controller/provider/auth_provider.dart';
import 'package:untitled/controller/provider/test_provider.dart';
import 'package:untitled/model/model.dart';
import 'package:untitled/model/utils/const.dart';

import '../home/home.dart';


import 'package:provider/provider.dart';

import 'logIn.dart';


class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String name = "";
  String email = "";
  String password = "";
  String confirmPassword = "";
  String userName = "";
  String error='';
  final _formKey = GlobalKey<FormState>();
  late TestProvider _testProvider;
  late AuthProvider _authProvider;


  @override
  Widget build(BuildContext context) {
    _testProvider = Provider.of<TestProvider>(context);
    _authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
    ),

      body: SingleChildScrollView(

        child: Container(

          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height/8, 20, MediaQuery.of(context).size.height/3),
          child: Form(
            key:_formKey ,

              child: Column(
                children: <Widget>
                [Text("Welcome ",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,

                    ),
                  ),
                  SizedBox(height: 50,),
            ///name
            Text("Enter your full name : ",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 20.0,),
          TextFormField(
           // controller: name,
            //obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Your name",
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color:Colors.grey, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 2.0),
              ),
            ),
            validator: (val) =>
            val!.isEmpty ? "Enter Your name" : null,
            onChanged: (val) {
              //every change in the field store in val in every second
              name = val;
            },
          ),
          SizedBox(height: 20,),
                  ///userName
                  Text("Enter your user name : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                   // controller: userName,
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your user name",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color:Colors.grey, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                      ),
                    ),
                    validator: (val) =>
                    val!.isEmpty ? "Enter Your user name" : null,
                    onChanged: (val) {
                      userName = val;
                    },
                  ),
                  SizedBox(height: 20,)
                  ///email
                  ,Text("Enter your email : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                   // controller: email,
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.purple, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                      ),
                    ),
                    validator: (val) =>
                    val!.isEmpty ? "Enter An E-Mail" : null,
                    onChanged: (val) {
                      //every change in the field store in val in every second
                      email = val;
                    },
                  ),
                  SizedBox(height: 20,),
                  //password
                  Text("Enter your password : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                   // controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                      ),
                    ),
                    validator: (val) {
                      if(val =="")
                      return "Enter  password";
                      else
                        return null;
                    },

                    onChanged: (val) {
                        password = val;
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("confirm your password : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    //controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "confirm password",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                      ),
                    ),
                      validator: (val) {
                        if(val =="")
                          return "Enter confirm password";
                        else if(confirmPassword!=password)
                          return "confirm password not corrent";
                        else
                          return null;
                      },
                    onChanged: (val) {
                      confirmPassword = val;

                    },
                  ),
                  SizedBox(height: 30,),


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

                          child: Text("Sign in",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        onPressed: () async {
                            if(_formKey.currentState!.validate()){
                              _authProvider.user=User(firstName: name, lastName: "", email: email, userName: userName,password: password);
                              Const.LOADIG(context);
                              var result=await _authProvider.register(context);
                              Navigator.of(context).pop();
                              if(result['status']){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Home()),);
                              }
                            }
                           //await _testProvider.load(context);
                         //
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  login ()),
                      );
                    },
                    child: Text(
                      'already have an account , Log in ',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}


