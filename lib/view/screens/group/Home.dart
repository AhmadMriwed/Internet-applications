import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Group.dart';
import 'package:flutter_app/LockFreeFile.dart';
import 'LogIn.dart';



class Home extends StatefulWidget {

@override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final List<String> entries =['private groups','public groups'];
  final List<int> color=[100,200];

  List<String> dropped =['Add file','delete file','add members','edit group'];
  String SelectedItem= 'Add nfile';
  Widget build(BuildContext context) {

    // String msg = 'Flutter - Raised Button';
    // _changeText() {
    //   setState(() {
    //     if (msg == 'Flutter - Raised Button') {
    //       msg = 'Changed the Text';
    //     } else {
    //       msg = 'Flutter - Raised Button';
    //     }
    //   });
    // }
    List<Group> groups= List.generate(20, (index) => Group(kind: 'public',name: 'group ${index+1}', admin: 'leen'  ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey[200]),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 80,
                    height:80,
                    child: CircleAvatar(backgroundColor: Colors.purple[100],),
                  ),
                  SizedBox(height: 10,),
                  Text('admin name '),
                  SizedBox(height: 8,),
                  Text('second text ',style:  TextStyle(
                    fontSize: 10.0,
                    //fontWeight: FontWeight.bold,
                   // color: Colors.blueGrey,
                  ),
                  ),
                  // create group , log out
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.create_new_folder_outlined),
              title: Text("create group"),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("log out", ),
              onTap: (){Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>  login ()),
              );},
            ),

          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),

      //leading: ,
      backgroundColor: Colors.deepPurple,
    ),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // TextFormField(
          //
          //   onFieldSubmitted: ( groupName){
          //     print(groupName);
          //
          //   },
          //
          //     decoration: InputDecoration(
          //       hintText: "search for a group",
          //       fillColor: Colors.white,
          //       filled: true,
          //
          //       enabledBorder: OutlineInputBorder(
          //         borderSide:
          //         BorderSide(color: Colors.deepPurple, width: 2.0),
          //       ),
          //
          //          prefixIcon: IconButton(icon: const Icon(Icons.search),
          //         color: Colors.black,
          //         onPressed: () {},
          //       ),
          //     ),
          //
          //
          //
          //   ),

          SizedBox(height: 20,),
          //SizedBox(height: 20,),
          Row(
            children: [
              Container(


                  child:
                     // Text(msg, style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal),),
                      Expanded(
                        child: RaisedButton(
                     textColor: Colors.white,
                      color: Colors.black26,

                          child: Text("Public groups", style: TextStyle(fontSize: 20),
                          ),
                          onPressed:() {
                            setState(() {

                            });
                          },
                          //color: Colors.red,
                         // textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.grey,
                        ),
                      )

                  ),


              SizedBox(width: 20),
              Container(

                child:
                    Expanded(child:
                    // Text(msg, style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal),),
                    RaisedButton(
                      child: Text("Public groups", style: TextStyle(fontSize: 20),),
                      onPressed:() {
                        setState(() {

                        });
                      },
                      color: Colors.black26,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.grey,
                    )

                ),
                  ),





              // Container(
              //   //color: Colors.black45,
              //   width: 120,
              //   height: 70.0,
              //   decoration: BoxDecoration( color: Colors.black45,
              //       borderRadius: BorderRadius.circular(45.0)
              //   ),
              //   //alignment: Alignment.center,
              //   child: MaterialButton(
              //
              //     child: Text("public groups",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 30.0,
              //       ),
              //     ),
              //     onPressed: (){
              //        // Navigator.push(
              //        //    context,
              //        //    MaterialPageRoute(builder: (context) =>  Home()),
              //        //  );
              //     },
              //   ),
              // ),
            ],


          ),
    SizedBox(height: 20,),


    Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
      itemCount: groups.length,
      itemBuilder: (context,index){
      return Container(
        decoration: BoxDecoration(color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(4),
        height: 60,
      child: ListTile(
      title: Text(groups[index].name),
      leading: Icon(Icons.folder),
      trailing:
      Row( mainAxisSize: MainAxisSize.min,
        children: [
          // DropdownButton(
          //   items: dropped.map(( _item ){
          //
          //     return DropdownMenuItem(
          //         value: _item,
          //         child: Text(_item) );
          //   }).toList(),
          //
          //   onChanged: (value){
          //     setState(() {
          //
          //     });
          //   },
          //   icon: Icon(Icons.settings),
          // ),
        IconButton (icon : const Icon (Icons.delete), onPressed: () {
          showDialog(context: context, builder: (contrext)=>Container(

            child: AlertDialog(

              title: Text("are you sure you want to delete this group ?",style: TextStyle(fontSize:20),),

              actions: [
                MaterialButton(

                  child: Text("Delete",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: (){;

                  },
                ),
                MaterialButton(

                  child: Text("Cancel",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),



              ],
            ),
          )
            ,
          );
        },),

       // IconButton(icon: const  Icon (Icons.settings), onPressed: (){}),

      ],
      ),


      onTap: (){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>LockFreeFiles()    ),);
      }
      ),
      );
          }
      ),
    ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.end,
            children: [

               MaterialButton(
                shape: const CircleBorder(),
                color: Colors.purple[200],
                padding: const EdgeInsets.all(20),
                onPressed: () {
                  showDialog(context: context, builder: (contrext)=>Container(

                    child: AlertDialog(

                      title: Text("adding a new group",style: TextStyle(fontSize:20),),
                      content: TextFormField(

                        onFieldSubmitted: ( groupName){
                          print(groupName);

                        },

                        decoration: InputDecoration(
                          hintText: "enter your group name ",
                          fillColor: Colors.white,
                          filled: true,

                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2.0),
                          ),

                        ),



                      ),
                      actions: [
                        FlatButton(
                          onPressed: (){


                          },
                          child: Text(
                            'Add group ',
                            style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                          ),
                        ),



                      ],
                    ),
                  )
                  ,
                  );
                },
                child: const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ),
              )

            ],
          ),
          SizedBox(height: 20,)


        ],
      ),
    ),


);

  }


}




//       Row(
//         children:
//         [
//           Column(
//           children:[ Text('private'),
//             Checkbox(value: public, onChanged: (bool? public)
//           {
//             setState(() {
//               this.public=true;
//             });
//           }
//           ),
//
// ]),
//           SizedBox(width: 5,),
//
//
//
//           Column(
//               children:[
//                 Text('public'),
//       Checkbox(value: public, onChanged: (bool? public)
//       {
//         setState(() {
//           this.public=public!;
//         });
//       }
//       ),
//         ]),
//           SizedBox(width: 20,),
//           MaterialButton(
//
//               color: Colors.purple[200],
//               padding: const EdgeInsets.all(20),
//               child: Text("add"),
//               onPressed: () {}),
//         ]
// ),