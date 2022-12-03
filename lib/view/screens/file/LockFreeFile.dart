import 'package:flutter_app/File.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'LogIn.dart';


class LockFreeFiles extends StatefulWidget {

  @override
  _LockFreeFilesState createState() => _LockFreeFilesState();
}

class _LockFreeFilesState extends State<LockFreeFiles> {
  bool isChecked=false;

  List<String> dropped =['edit files','share files',];
  String SelectedItem= 'Add number';

  Widget build(BuildContext context) {
    List<File> files = List.generate(20, (index) => File(kind: 'Checked in',name: 'file ${index+1}', admin: 'leen',file_kind: File_kind.checked_In) );
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(' free Files '),
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

                onChanged: (value){
                  setState(() {

                  });
                },
                icon: Icon(Icons.arrow_drop_down_outlined),
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
                  {return Container(
                    decoration: BoxDecoration(color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(4),
                    height: 60,

                    // color: Colors.purple[100],
                    child: ListTile(
                        title: Text(files[index].name+ 'is '+ files[index].kind),
                        subtitle: Text('hello'),
                        leading: Icon(Icons.insert_drive_file),
                        trailing:Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          Text("Date"),

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
                        ],)
                    ),
                  );


                  }
              ),
            ),

            SizedBox(height: 20,),
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
