import 'package:flutter/material.dart';
import 'package:utsmobile2/main.dart';

class jurusanpage extends StatelessWidget {
jurusanpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JURUSAN"),
      backgroundColor: Colors.green[700],
      automaticallyImplyLeading: false,
  actions: [
   IconButton(
   onPressed: () {},
   icon: const Icon(Icons.search),
   )
  ],
  centerTitle: true,
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