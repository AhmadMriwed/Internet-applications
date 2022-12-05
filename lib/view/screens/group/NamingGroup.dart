import 'package:flutter_app/File.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'LogIn.dart';


class NamingGroup extends StatefulWidget {

  @override
  _NamingGroupState createState() => _NamingGroupState();
}

class _NamingGroupState extends State<NamingGroup> {

  List<String> dropped =['Add number','create file','delete group',];
  String SelectedItem= 'Add number';

  Widget build(BuildContext context) {
    List<File> files = List.generate(5, (index) => File(kind: 'Checked in',name: 'file ${index+1}', admin: 'leen',file_kind: File_kind.checked_In) );
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('group name '),
          actions:
          [
            Builder(
            builder: (BuildContext context) {
              return DropdownButton(
                items: dropped.map(( _item ){

                  return DropdownMenuItem(
                      value: _item,
                      child: Text(_item) );
                }).toList(),

                onChanged: (value){
                  setState(() {

                  });
                },
                icon: Icon(Icons.arrow_drop_down_outlined),
              );
            },
          ),
          ],

          backgroundColor: Colors.deepPurple[200],
        ),
        body :SingleChildScrollView(

          child: Container(

            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height/10, 20, MediaQuery.of(context).size.height/3),
            child: Form(

              child: Column(
                children: <Widget>
                [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "search for a group",
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
                   Container(
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height/2 ,
                    child:
                    ListView.builder(
                    itemCount: files.length,
                    itemBuilder: (context,index)
                    {return Container(
                    margin: EdgeInsets.all(4),
                    height: 50,
                    color: Colors.purple[100],
                    child: ListTile(
                    title: Text(files[index].name+ 'is '+ files[index].kind),
                    leading: Icon(Icons.folder),
                    trailing: IconButton(
                      icon:const Icon(Icons.more_vert),
                      onPressed: () {  },
                    )
                    //Icon(Icons.more_vert),
                    // onTap: (){
                    // Navigator.push(context,MaterialPageRoute(builder:(context)=>NamingGroup()   ),);
                    // }
                    ),
                    );


                    }
                    ),
                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    );
                  }

                }
