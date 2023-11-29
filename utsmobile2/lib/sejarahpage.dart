import 'package:flutter/material.dart';
import 'package:utsmobile2/main.dart';

class sejarahpage extends StatelessWidget {
sejarahpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SEJARAH"),
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