import 'package:flutter/material.dart';
import 'package:utsmobile2/main.dart';

class profilpage extends StatelessWidget {
profilpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROFIL STTB"),
      backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: TextButton.icon(
          onPressed: (){
            Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context){
                    return MyApp();
                   }));
          }, icon: Icon(Icons.home), label: Text("KEMBALI")),
      ),
    );
  }
}