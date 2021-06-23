import 'package:flutter/material.dart';
import 'package:transicion_app/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
          title: Text('Página 1'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _MyButton(
                transition: 1,
                nombre: 'Slide transition',
              ),
              SizedBox(height: 20.0),
              _MyButton(
                transition: 2,
                nombre: 'Scale transition',
              ),
              SizedBox(height: 20.0),
              _MyButton(
                transition: 3,
                nombre: 'Rotation transition',
              ),
              SizedBox(height: 20.0),
              _MyButton(
                transition: 4,
                nombre: 'Fade transition',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyButton extends StatelessWidget {
  final int transition;
  final String nombre;
  _MyButton({
    required this.transition,
    required this.nombre,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, _rutaPag2(transition));
      },
      child: Text('$nombre'),
      style: ButtonStyle(),
    );
  }

  Route _rutaPag2(int transition) {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          Pagina2Page(nombre),
      transitionDuration: Duration(milliseconds: 800),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        switch (transition) {
          case 1:
            return SlideTransition(
              position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
                  .animate(curvedAnimation),
              child: child,
            );
          case 2:
            return ScaleTransition(
                child: child,
                scale: Tween<double>(begin: 0.0, end: 1.0)
                    .animate(curvedAnimation));
          case 3:
            return RotationTransition(
              child: child,
              turns:
                  Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            );
          case 4:
            return FadeTransition(
              opacity:
                  Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
              child: child,
            );
          default:
            return SlideTransition(
              position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
                  .animate(curvedAnimation),
              child: child,
            );
        }
      },
    );
  }
}
