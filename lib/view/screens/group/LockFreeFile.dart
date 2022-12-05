import 'package:flutter_app/File.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Manegement_Grpoup.dart';
import 'package:flutter_app/Members.dart';
import 'package:flutter_app/Reports.dart';


import 'LogIn.dart';


class LockFreeFiles extends StatefulWidget {

  @override
  _LockFreeFilesState createState() => _LockFreeFilesState();
}

class _LockFreeFilesState extends State<LockFreeFiles> {
  bool isChecked=false;

  List<String> dropped =['added members','change manegement group','delete group', 'create file'];
  String SelectedItem= 'added members';

  get files => null;

  Widget build(BuildContext context) {
    List<File> files = [
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),
      File(kind: "Free_file", name:'file1',is_selected: false ),
      File(kind: "Locked_me_file", name:'file2',is_selected: false ),
      File(kind: "Lock_you_file", name:'file3',is_selected: false ),

    ];
    return Scaffold(

      appBar: AppBar(

        flexibleSpace: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Members()),);
            }),
        //centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              TextButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Members()),);
              } ,
                child: Text(' Group Name ', style: TextStyle(
                  color: Colors.white,

                  fontSize: 15),),),

              Text("members ", style: TextStyle(
                  color: Colors.white70,

                  fontSize: 8),)
            ],
          ),
        ) ,
        actions:
        [
          Builder(
            builder: (BuildContext context) {
              return DropdownButton(
                dropdownColor: Colors.white,
                iconSize: (40),
                iconEnabledColor: Colors.white,
                items: dropped.map(( _item ){

                  return DropdownMenuItem(
                      value: _item,
                      child: Text(_item) );
                }).toList(),

                onChanged: (String? newValue){
                  if(newValue=="added members"){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Members()),);

                  });}
                  else if
                  (newValue=="change manegement group"){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Manegement_group()),);

                    });}
                  else if
                  (newValue=="delete group"){
                    setState(() {
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

                    });}
                  else if
                  (newValue=="create file"){
                    setState(() {

                      showDialog(context: context, builder: (contrext)=>Container(

                        child: AlertDialog(

                          title: Text("adding a new file",style: TextStyle(fontSize:20),),
                          content: TextFormField(

                            onFieldSubmitted: ( groupName){
                              print(groupName);

                            },

                            decoration: InputDecoration(
                              hintText: "enter your file name ",
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
                                'Add file ',
                                style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                              ),
                            ),



                          ],
                        ),
                      )
                        ,
                      );

                    });}
                },
                icon: Icon(Icons.more_vert),
              );
            },
          ),
        ],

        backgroundColor: Colors.deepPurple,
      ),
      body :Padding(

        padding: const EdgeInsets.all(10.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>
          [
            TextFormField(
              onFieldSubmitted: ( fileName){
                print(fileName);

              },
              decoration: InputDecoration(
                hintText: "search for a file",
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
                prefixIcon: IconButton(icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),


            ),
            SizedBox(height: 20,),

            Expanded(
              child: ListView.builder(

                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  itemCount: files.length,

                  itemBuilder: (context,index)
                //  if (files.)
                  {
                    return FileItems(
                        files[index].name,
                        files[index].kind,
                        files[index].is_selected ,
                        index);
                  //     Container(
                  //   decoration: BoxDecoration(color: Colors.deepPurple[100],
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   alignment: Alignment.center,
                  //   margin: EdgeInsets.all(4),
                  //   height: 80,
                  //
                  //   // color: Colors.purple[100],
                  //   child: ListTile(
                  //
                  //       ),
                  // );


                  }
              ),
            ),

            SizedBox(height: 20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   // crossAxisAlignment: CrossAxisAlignment.end,
            //   children: [
            //
            //     MaterialButton(
            //       shape: const CircleBorder(),
            //       color: Colors.purple[200],
            //       padding: const EdgeInsets.all(20),
            //       onPressed: () {
            //         showDialog(context: context, builder: (contrext)=>Container(
            //
            //           child: AlertDialog(
            //
            //             title: Text("adding a new file",style: TextStyle(fontSize:20),),
            //             content: TextFormField(
            //
            //               onFieldSubmitted: ( groupName){
            //                 print(groupName);
            //
            //               },
            //
            //               decoration: InputDecoration(
            //                 hintText: "enter your file name ",
            //                 fillColor: Colors.white,
            //                 filled: true,
            //
            //                 enabledBorder: OutlineInputBorder(
            //                   borderSide:
            //                   BorderSide(color: Colors.deepPurple, width: 2.0),
            //                 ),
            //
            //               ),
            //
            //
            //
            //             ),
            //             actions: [
            //               FlatButton(
            //                 onPressed: (){
            //
            //
            //                 },
            //                 child: Text(
            //                   'Add file ',
            //                   style: TextStyle(color: Colors.deepPurple, fontSize: 15),
            //                 ),
            //               ),
            //
            //
            //
            //             ],
            //           ),
            //         )
            //           ,
            //         );
            //       },
            //       child: const Icon(
            //         Icons.add,
            //         size: 40,
            //         color: Colors.white,
            //       ),
            //     )
            //
            //   ],
            // ),
            // SizedBox(height: 20,)
          ],

        ),
      ),

    );

  }

  Widget FileItems (String name , String Kind , bool isSelected , int index)
  {

    if (Kind=="Free_file"){
    return ListTile(
        title: Text(name),
        subtitle: Text(Kind + '  date '),

        leading: Icon(Icons.insert_drive_file),

        trailing:





    //     isSelected?
    //     Icon(Icons.check_circle)
    //         :Icon(Icons.check_circle_outline),
    //     onTap: (){
    //       setState(() {
    //         files[index].isSelected=!files[index].isSelected;
    //
    //       });
    // },






        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
        //
        //     // Text("Date"),
        //
        //     // IconButton( icon: const Icon(Icons.delete), onPressed: () {
        //     //   showDialog(context: context, builder: (contrext)=>Container(
        //     //
        //     //     child: AlertDialog(
        //     //
        //     //       title: Text("are you sure you want to delete this group ?",style: TextStyle(fontSize:20),),
        //     //
        //     //       actions: [
        //     //         MaterialButton(
        //     //
        //     //           child: Text("Delete",
        //     //             style: TextStyle(
        //     //               color: Colors.black,
        //     //               fontWeight: FontWeight.bold,
        //     //               fontSize: 20.0,
        //     //             ),
        //     //           ),
        //     //           onPressed: (){
        //     //
        //     //           },
        //     //         ),
        //     //         MaterialButton(
        //     //
        //     //           child: Text("Cancel",
        //     //             style: TextStyle(
        //     //               color: Colors.black,
        //     //               fontWeight: FontWeight.bold,
        //     //               fontSize: 20.0,
        //     //             ),
        //     //           ),
        //     //           onPressed: (){
        //     //           },
        //     //         ),
        //     //
        //     //
        //     //
        //     //       ],
        //     //     ),
        //     //   )
        //     //     ,
        //     //   );
        //     // },),
        //     // IconButton(onPressed: () {}, icon: const Icon(Icons.download_rounded)),
        //     // IconButton(onPressed: () {}, icon: const Icon(Icons.lock)),
        //     //IconButton(onPressed: (){} ,icon: const Icon(Icons.lock_open), ),
            Checkbox(
              checkColor: Colors.white,
              //  fillColor: MaterialStateProperty.resolveWith(),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
        //     // DropdownButton(
        //     //   items: dropped.map(( _item ){
        //     //
        //     //     return DropdownMenuItem(
        //     //         value: _item,
        //     //         child: Text(_item) );
        //     //   }).toList(),
        //     //
        //     //   onChanged: (value){
        //     //     setState(() {
        //     //
        //     //     });
        //     //   },
        //     //   icon: Icon(Icons.arrow_drop_down_outlined),
        //     // ),
        //
          ],
        ),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Reports()    ),);
        }


    );
  }
    else if (Kind=="Locked_me_file"){
    return ListTile(
        title: Text(name),
        subtitle: Text(Kind + '  date '),

        leading: Icon(Icons.insert_drive_file),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text("Date"),

            // IconButton( icon: const Icon(Icons.delete), onPressed: () {
            //   showDialog(context: context, builder: (contrext)=>Container(
            //
            //     child: AlertDialog(
            //
            //       title: Text("are you sure you want to delete this group ?",style: TextStyle(fontSize:20),),
            //
            //       actions: [
            //         MaterialButton(
            //
            //           child: Text("Delete",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20.0,
            //             ),
            //           ),
            //           onPressed: (){
            //
            //           },
            //         ),
            //         MaterialButton(
            //
            //           child: Text("Cancel",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20.0,
            //             ),
            //           ),
            //           onPressed: (){
            //           },
            //         ),
            //
            //
            //
            //       ],
            //     ),
            //   )
            //     ,
            //   );
            // },),
           // IconButton(onPressed: () {}, icon: const Icon(Icons.download_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.lock)),
           // IconButton(onPressed: (){} ,icon: const Icon(Icons.lock_open), ),
           //  Checkbox(
           //    checkColor: Colors.white,
           //    //  fillColor: MaterialStateProperty.resolveWith(),
           //    value: isChecked,
           //    onChanged: (bool? value) {
           //      setState(() {
           //        isChecked = value!;
           //      });
           //    },
           //  ),
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
            //   icon: Icon(Icons.arrow_drop_down_outlined),
            // ),
          ],),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Reports()    ),);
        }


    );
    }
    else  {
    return ListTile(
        title: Text(name),
        subtitle: Text(Kind + '  date '),

        leading: Icon(Icons.insert_drive_file),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text("Date"),

            IconButton( icon: const Icon(Icons.delete), onPressed: () {
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
                      onPressed: (){

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.download_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(onPressed: (){} ,icon: const Icon(Icons.lock_open), ),
            // Checkbox(
            //   checkColor: Colors.white,
            //   //  fillColor: MaterialStateProperty.resolveWith(),
            //   value: isChecked,
            //   onChanged: (bool? value) {
            //     setState(() {
            //       isChecked = value!;
            //     });
            //   },
            // ),
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
            //   icon: Icon(Icons.arrow_drop_down_outlined),
            // ),
          ],),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Reports()    ),);
        }


    );}

  }
}
