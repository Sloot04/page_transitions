import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  final String nombre;
  Pagina2Page(this.nombre);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
        backgroundColor: Colors.green.shade300,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página 2',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
            Container(
              height: 2.0,
              width: 200.0,
              color: Colors.green.shade300,
            ),
            SizedBox(height: 15.0),
            Text('$nombre',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
            SizedBox(height: 25.0),
            FloatingActionButton(
              backgroundColor: Colors.green.shade300,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined, color: Colors.black, size: 35,),
            )
          ],
        ),
      ),
    );
  }
}
