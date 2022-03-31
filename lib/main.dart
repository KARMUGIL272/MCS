import 'package:flutter/material.dart';

void main()=>runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading:IconButton(
          icon:Icon(Icons.menu),
          onPressed: (){
            print('Icon button clicked');
          },
        ),*/
        title:Text('Appbar Demo'),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.more),
            onPressed: (){},
          )
        ],
        /*flexibleSpace: SafeArea(
          child: Icon(
            Icons.grade,
            color:Colors.blueGrey,
            size:45.0
          ),
        ),*/
        bottom:PreferredSize(
          preferredSize:Size.fromHeight(75.0),
          child:Container(
            color:Colors.white70,
            height:75.0,
            width:double.infinity,
            child:Text('Sayana',
              style:TextStyle(
                color:Colors.pink,
                fontSize:25.0,
              ),
            ),
          ),
        ),
      ),
      body:Center(
        child: Text(
          'WELCOME',
          style:TextStyle(fontSize:28.0,color: Colors.lightGreen,),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child:Icon(Icons.add),
        onPressed: (){
          print('Click me');
        },
      ),
      drawer:Drawer(
        elevation: 16.0,
        child:Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Sayana'),
              accountEmail: Text('sayana@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child:Text('Sayana'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child:Text('369'),
                ),
              ],
            ),
            ListTile(
              title:Text('All Inbox'),
              leading:Icon(Icons.mail),
            ),
            Divider(),
            ListTile(
              title:Text('All Primary'),
              leading:Icon(Icons.inbox),
            ),
            Divider(),
            ListTile(
              title:Text('All Social'),
              leading:Icon(Icons.people),
            ),
            Divider(),
            ListTile(
              title:Text('All Promotions'),
              leading:Icon(Icons.local_offer),
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            label: 'Home',
            icon:Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon:Icon(Icons.search),
          )
        ],
      ),
    );
  }
}