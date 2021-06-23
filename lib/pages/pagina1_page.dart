import 'package:flutter/material.dart';
import 'package:transicion_app/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 1'),
      ),
      body: Center(
        child: Text('Página 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }

  Route _crearRuta() {

    return PageRouteBuilder(pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => Pagina2Page(),
    transitionDuration: Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child){

 final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

  return SlideTransition(position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero ).animate(curvedAnimation),
  child: child,
  );     
    },
    );
  }
}