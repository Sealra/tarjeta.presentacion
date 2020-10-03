import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('could not launch $command');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              Text(
                'Sebastián Alvarado',
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Estudiante de Ingeniería Civil Informática',
                style: TextStyle(
                  fontSize: 21.0,
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: FlatButton(
                  onPressed: () {
                    customLaunch('tel:+56 9 57031557');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.blueAccent),
                      Text(
                        '     +56 9 57031557',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: FlatButton(
                  onPressed: () {
                    customLaunch('mailto:sebastian.alvarado@usm.cl');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        '     sebastian.alvarador@usm.cl',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: FlatButton(
                  onPressed: () {
                    customLaunch('https://www.instagram.com/sealra_/?hl=es-la');
                    //customLaunch('https://twitter.com/Sealra_');
                  },
                  child: Row(
                    children: <Widget>[
                      Text(
                        '@',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '      sealra_',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: FlatButton(
                  onPressed: () {
                    customLaunch(
                        'https://www.google.com/maps/search/?api=1&query=-41.471667,-72.939722');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.directions,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        '     Puerto Montt',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
