import 'package:flutter/material.dart';

import '../home/home.dart';
import '../login/LogIn.dart';




class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email='' ;
  String name ='' ;
  String password='';
  String error='';
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
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
                  SizedBox(height: 50,)
                  ,Text("Enter your email : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
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
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("Enter your full name : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
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
                      setState(() {
                        name = val;
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("Enter your password : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
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
                    // validator: (val) =>
                    // val.isEmpty ? "Enter Your name" : null,
                    // onChanged: (val) {
                    //   //every change in the field store in val in every second
                    //   setState(() {
                    //     name = val;
                    //   });
                    // },
                  ),
                  SizedBox(height: 20,),
                  Text("Renter your password : ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "",
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
                    // validator: (val) =>
                    // val.isEmpty ? "Enter Your name" : null,
                    // onChanged: (val) {
                    //   //every change in the field store in val in every second
                    //   setState(() {
                    //     name = val;
                    //   });
                    // },
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
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Home()),
                          );
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


