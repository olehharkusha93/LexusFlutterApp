import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:hello_world/payment_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter layout demo'),
        // ), 
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                'images/grille.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
                //padding: EndgeInsets.symetric(horizontal: 10.0, vertical: 40.0),
                
                  Positioned(
                    bottom: 10.0,
                    child: Column(children: <Widget>[
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('COUNTRY/REGION', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                          decoration: TextDecoration.underline
                        ),),
                        Text('USA', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                          decoration: TextDecoration.underline
                        ),),
                        Icon(Icons.navigate_next, color: Colors.white)
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('LANGUAGE', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                          decoration: TextDecoration.underline
                        ),),
                        Text('ENGILISH', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                          decoration: TextDecoration.underline
                        ),),
                         Icon(Icons.navigate_next, color: Colors.white)
                      ],
                    )
                ],),
                  ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Image.asset(
                'images/lexus_logo2.png',
                width: 300,
              )
            ],),
            Container(
              // color: Colors.red,
              padding: EdgeInsets.all(128),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                    },
                    child: Text('SIGN IN', style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0
                      ),),
                    color: Colors.black,
                    
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                      child: Text('REGISTER', style: TextStyle(
                        color: Colors.black, 
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        ),),
                      color: Colors.white
                      ,),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Checkbox(onChanged: (bool value) {}, value: false,),
                    Text(
                      'KEEP ME LOGGED IN',
                      style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                      )
                    )
                  ],),
                
              ],),
             
              Container(
                color: Colors.black,
                child: SafeArea(
                  bottom: true,
                                child: Container(
                                  color: Colors.black,
                                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                            Icon(Icons.tag_faces, color: Colors.white),
                            Text('FACE ID', style: TextStyle(color: Colors.white, fontSize: 20),),
                            Text('|', style: TextStyle(color: Colors.white, fontSize: 20),),
                            Row(
                              children: <Widget>[
                                Text('DEMO MODE', style: TextStyle(color: Colors.white, fontSize: 20),),
                              ],
                            ),
                            
                          ],),
                                ),
                ),
              ),
                    
            // titleSection,
            // buttonSection,
            // textSection,
          ],
        ),
      );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()))
    );
  }
}



class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  // ···
  void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {
      _favoriteCount -= 1;
      _isFavorited = false;
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
}
   @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
