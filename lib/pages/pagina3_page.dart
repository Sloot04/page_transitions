import 'package:flutter/material.dart';


class Pagina3Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Página 3'),
      ),
      backgroundColor: Colors.yellow,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página 3', style:TextStyle(fontSize: 30, fontWeight: FontWeight.w800) ,),
            SizedBox(height: 5.0,),
            Text('Scale Transition', style:TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,)
          ],
        ),
     ),
   );
  }
}