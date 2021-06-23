import 'package:flutter/material.dart';


class Pagina4Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Página 4'),
      ),
      backgroundColor: Colors.deepOrange,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página 4', style:TextStyle(fontSize: 30, fontWeight: FontWeight.w800) ,),
            SizedBox(height: 5.0,),
            Text('Rotation Transition', style:TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,)
          ],
        ),
     ),
   );
  }
}