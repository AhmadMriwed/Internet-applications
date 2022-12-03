import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../auth/logIn.dart';
import '../group/group.dart';

class Home extends StatefulWidget {

@override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> entries =['private groups','public groups'];
  final List<int> color=[100,200];


  Widget build(BuildContext context) {
    List<Group> groups= List.generate(20, (index) => Group(kind: 'public',name: 'group ${index+1}', admin: 'leen'  ));
    return Scaffold(
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
              leading: Icon(Icons.insert_drive_file_outlined),
              title: Text("create file"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("log out"),
              onTap: (){Navigator.push(
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
      backgroundColor: Colors.deepPurple[200],
    ),
       body : SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height/14, 20, MediaQuery.of(context).size.height/14),
             color: Colors.white38,
              child: Column(
                children :[
                  Container(
                    color: Colors.blueGrey[200],
                    child: Text('Private groups')),
                  SizedBox(height: 10,),
                  Container(
                    //color: Colors.blueGrey[200],
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height/3 ,
                    child:
                   ListView.builder(
                         itemCount: groups.length,
                         itemBuilder: (context,index)
                       {return Container(
                       margin: EdgeInsets.all(4),
                       height: 50,
                       color: Colors.purple[100],
                        child: ListTile(
                           title: Text(groups[index].name),
                           leading: Icon(Icons.folder),
                          trailing: IconButton(
                       icon:const Icon(Icons.more_vert),
                       onPressed: () {  },
                          )
                    ),
                  );


                       }
                   ),

             ),
                  SizedBox(height: 30,),
                  Container(
                      color: Colors.grey[200],
                      child: Text('public groups')),
                  SizedBox(height: 10,),
                  Container(
                    //color: Colors.blueGrey[200],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/3,
                    child:
                      ListView.builder(
                       itemCount: groups.length,
                       itemBuilder: (context,index){
                         return Container(
                           margin: EdgeInsets.all(4),
                           height: 50,
                           color: Colors.purple[100],
                           child: ListTile(
                               title: Text(groups[index].name),
                               leading: Icon(Icons.folder),
                               trailing: IconButton(
                                 icon:const Icon(Icons.more_vert),
                                 onPressed: () {  },
                               )
                             ),
                         );
                       }

                   ),

             ),

          ],
         ),
         )
       )
    );
  }

}
