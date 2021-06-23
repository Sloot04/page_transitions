import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Página 2'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página 2', style:TextStyle(fontSize: 30, fontWeight: FontWeight.w800) ,),
            SizedBox(height: 5.0,),
            Text('Slide Transition', style:TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,)
          ],
        ),
     ),
   );
  }
}