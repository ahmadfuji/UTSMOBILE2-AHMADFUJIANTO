import 'package:flutter/material.dart';
import 'package:utsmobile2/galeripage.dart';
import 'package:utsmobile2/jurusanpage.dart';
import 'package:utsmobile2/profilpage.dart';
import 'package:utsmobile2/sejarahpage.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("SEKOLAH TINGGI TEKNOLOGI BANDUNG"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("AHMAD FUJIANTO", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),), 
              accountEmail: new Text("xyz@xyz.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://lzd-img-global.slatic.net/g/p/8cca5ac160482e901e82a4f4fd09fcab.jpg_720x720q80.jpg"),
              ),
              decoration: new BoxDecoration(color: Colors.green[700]),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Akun"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Keluar"),
            ),
          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context){
                    return profilpage();
                   }));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.account_box, size: 78.0,),
                      Text("Profile", style : new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context){
                    return jurusanpage();
                   }));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.build, size: 78.0,),
                      Text("Jurusan", style : new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context){
                    return sejarahpage();
                   }));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.timeline, size: 78.0,),
                      Text("Sejarah", style : new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context){
                    return galeripage();
                   }));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.image, size: 78.0,),
                      Text("Galeri", style : new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}