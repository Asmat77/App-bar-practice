import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.account_circle),
        elevation: 5,
        shadowColor: Colors.blue,
        // shape: RoundedRectangleBorder(
        //   side: BorderSide(
        //     color: Colors.grey,
        //     width: 2
        //   ),
        //
        //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(21),
        //
        //   ),
        //
        // ),
        actions: [
          //IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          //IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
          PopupMenuButton(
            elevation: 11,
              color: Colors.grey,
              position: PopupMenuPosition.under,
              itemBuilder: (_){
            return [
              PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.settings,),
                      SizedBox(width: 10,),
                      Text("Settings")
                    ],
                  )
              ),
              PopupMenuItem(
                  onTap: (){},
                  child: Row(
                children: [
                  Icon(Icons.logout,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("LogOut",style: TextStyle(color: Colors.red),),
                ],
              )),
              PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.settings_input_component_sharp,color: Colors.yellow,),
                      SizedBox(width: 10,),
                      Text("aaaa",style: TextStyle(color: Colors.yellow),),
                    ],
                  )),

            ];
          })
        ],


      ),
      body: Container(),
    );
  }
}