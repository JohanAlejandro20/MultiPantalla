import 'package:bibliotek/views/settings.dart';
import 'package:bibliotek/views/systemslibrary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bibliotek/views/historiallibrary.dart';
import './about.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new PrincipalPage(),
    );
  }
}

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

// class PrincipalPage extends StatefulWidget {
//   PrincipalPage({Key key}) : super(key: key);

//   @override
//   _PrincipalPageState createState() => _PrincipalPageState();
// }

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(buildContext) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BiblioteK"),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Juan '),
              accountEmail: new Text('juan@konradlorenz.edu.co'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('Historial'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new HistorialLibrary()));
              },
            ),
            new ListTile(
              title: new Text('About'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new AboutPage()));
              },
            ),new ListTile(
              title: new Text('Configuracion'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new SettingsPage()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/images/psicologia.png'),
                              Text("Psicologia",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,)
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new SystemsLibrary()));
                      },
                    )
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              new Image.asset('assets/images/mercadeo.png'),
                              Text("Mercadeo",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,)
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new SystemsLibrary()));
                      },
                    )
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              new Image.asset('assets/images/ing_sistemas.png'),
                              Text("Sistemas",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,)
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new SystemsLibrary()));
                      },
                    )
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              new Image.asset('assets/images/negocios.png'),
                              Text("Negocios",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,)
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new SystemsLibrary()));
                      },
                    )
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              new Image.asset('assets/images/matematicas.png'),
                              Text("Matematicas",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,)
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new SystemsLibrary()));
                      },
                    )
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              new Image.asset('assets/images/ing_industrial.jpg'),
                              Text("Industrial",                    
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,)
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new SystemsLibrary()));
                      },
                    )
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
    /*Scaffold(
      appBar: new AppBar(
        title: new Text("BiblioteK"),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Juan '),
              accountEmail: new Text('juan@konradlorenz.edu.co'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('Historial'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new HistorialLibrary()));
              },
            ),
            new ListTile(
              title: new Text('About'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new AboutPage()));
              },
            ),new ListTile(
              title: new Text('Configuracion'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new SettingsPage()));
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          new GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new SystemsLibrary()));
              },
              child: new Container(
                padding: const EdgeInsets.all(8),
                color: Colors.lightBlueAccent[400],
                child: Column(children: <Widget>[
                  new Image.asset('assets/images/psicologia.png', height: 100),
                  new Text(
                    "Psicologia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ]),
              )),
          new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SystemsLibrary()),
                );
              },
              child: new Container(
                padding: const EdgeInsets.all(8),
                color: Colors.lightBlueAccent[400],
                child: Column(children: <Widget>[
                  new Image.asset('assets/images/negocios.png', height: 100),
                  new Text(
                    "Negocios",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ]),
              )),
          new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SystemsLibrary()),
                );
              },
              child: new Container(
                padding: const EdgeInsets.all(8),
                color: Colors.lightBlueAccent[400],
                child: Column(children: <Widget>[
                  new Image.asset('assets/images/mercadeo.png', height: 100),
                  new Text(
                    "Mercadeo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ]),
              )),
          new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SystemsLibrary()),
                );
              },
              child: new Container(
                padding: const EdgeInsets.all(8),
                color: Colors.lightBlueAccent[400],
                child: Column(children: <Widget>[
                  new Image.asset('assets/images/matematicas.png', height: 100),
                  new Text(
                    "Matematicas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ]),
              )),
          new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SystemsLibrary()),
                );
              },
              child: new Container(
                padding: const EdgeInsets.all(8),
                color: Colors.lightBlueAccent[400],
                child: Column(children: <Widget>[
                  new Image.asset('assets/images/ing_sistemas.png',
                      height: 100),
                  new Text(
                    "Sistemas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ]),
              )),
          new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SystemsLibrary()),
                );
              },
              child: new Container(
                padding: const EdgeInsets.all(8),
                color: Colors.lightBlueAccent[400],
                child: Column(children: <Widget>[
                  new Image.asset('assets/images/ing_industrial.jpg',
                      height: 100),
                  new Text(
                    "Industrial",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ),
                ]),
              )),
        ],
      ),
    );*/
  }
}
