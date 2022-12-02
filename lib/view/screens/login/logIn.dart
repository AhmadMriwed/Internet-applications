import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../home/home.dart';
import '../signin/signIn.dart';

class login extends StatefulWidget {

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  // String email ;
  // String passwordValue;

  var formkey=GlobalKey<FormState>();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        centerTitle: true,
        title:Text(
          " تطبيقات الانترنت ",
          style: TextStyle (color: Colors.white

        ),
        ),
      ),
      body :Center(
        child: Container(
          color: Colors.pinkAccent[50],
        child:Padding(
          padding: const EdgeInsets.all(20.0),
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
                     fontSize: 40.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,

                   ),
                  ),
                ),
                SizedBox(height: 80.0,),
               Text("Enter your email : ",
                 style: TextStyle(
                   fontSize: 25.0,
                 ),
               ),
              SizedBox(height: 20.0,),
                TextFormField(
                  onFieldSubmitted: ( email){
                    print(email);

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

                SizedBox(height: 60.0,),
                Text("Enter your password :",
                  style: TextStyle(
                    fontSize: 30.0
                  ),
                ),
                SizedBox(height: 20.0,),
                 Row(
                children:
                 [
                   Expanded(
                     child: TextFormField(
                       onFieldSubmitted: ( passwordValue){
                         print(passwordValue);

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
                SizedBox(height: 20.0,),
                // ignore: deprecated_member_use
                TextButton(
                  onPressed: (){
                  },
                  child: Text(
                    'Forgot your Password ? ',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),

                SizedBox(height: 30.0,),
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
                      onPressed: (){
                        if (formkey.currentState!.validate())
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
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
