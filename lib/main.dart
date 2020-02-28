import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> images = ["images/blazer1.jpeg","images/blazer2.jpeg"];
  int imageIndex =  0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Galler"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(
                images[imageIndex],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                     setState(() {
                       imageIndex > 0 ? imageIndex-- : imageIndex = images.length - 1;
                     });
                  },
                  icon: Icon(
                    Icons.arrow_back
                  ),
                ),
                IconButton(
                  onPressed: (){
                    setState(() {
                      imageIndex < images.length -1   ? imageIndex++ : imageIndex = 0;
                    });
                  },
                  icon: Icon(
                      Icons.arrow_forward
                  ),
                )
              ],
            )
          ],
        )
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
