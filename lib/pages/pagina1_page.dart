import 'package:flutter/material.dart';
import 'package:transicion_app/pages/pagina2_page.dart';
import 'package:transicion_app/pages/pagina3_page.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 1'),
      ),
      drawer: _Pages(),
      body: Center(
        child: Text('Página 1'),
      ),
    );
  }
}

class _Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            SafeArea(
                child: Text(
              'Page transitions',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
            )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              height: 2.0,
              color: Colors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, _rutaPag2());
                    },
                    child: Text(
                      'Página 2',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 20.0),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, _rutaPag3());
                    },
                    child: Text(
                      'Página 3',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 20.0),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Route<Object?> _rutaPag3() {
    return PageRouteBuilder(pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation)=> Pagina3Page(),
    transitionDuration: Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child){
      final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
     return ScaleTransition(
          child: child,
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
    }
    );
  }
}

Route _rutaPag2() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) =>
        Pagina2Page(),
    transitionDuration: Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curvedAnimation =
          CurvedAnimation(parent: animation, curve: Curves.easeInOut);

      return SlideTransition(
          position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
              .animate(curvedAnimation),
          child: child,
        );

      
    },
  );
}
