import 'package:bibliotek/functions/BeautyTextfield.dart';
import 'package:bibliotek/views/book.dart';
import 'package:flutter/material.dart';

class SystemsLibrary extends StatefulWidget {
  SystemsLibrary({Key key}) : super(key: key);

  @override
  _SystemsLibraryState createState() => _SystemsLibraryState();
}

class _SystemsLibraryState extends State<SystemsLibrary> {

  Widget _inputsearch=new Container(); 

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
      
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                _inputsearch=
                BeautyTextfield(
                width: double.maxFinite,
                height: 60,
                maxLines: 1,
                duration: Duration(milliseconds: 300),
                inputType: TextInputType.text,
                placeholder: "...",
                prefixIcon: Icon(Icons.search),
                backgroundColor: Colors.white54,
                onTap: () {
                  print('Click');
                },
                onChanged: (text) {
                  print(text);
                },
                onSubmitted: (data) {
                  print(data.length);
                },
              );
              });
            },
          ),
          // action button

          // overflow menu
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: <Widget>[
              _inputsearch,
              Text(
                'Libros de Sistemas.',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Open Sans',
                    fontSize: 25),
              ),
              
              GestureDetector(
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/7139EcoIUpL.jpg",
                        height: 150,
                      ),
                      Text(
                        'El Gran Libro de Android.',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Book()),
                  );
                },
              )
            ],
          )),
        ),
      ),
    ));
  }
}
