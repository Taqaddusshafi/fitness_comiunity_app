import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _fun() {}

  // void _incrementCounter() {
  //setState(() {
  // This call to setState tells the Flutter framework that something has
  // changed in this State, which causes it to rerun the build method below
  // so that the display can reflect the updated values. If we changed
  // _counter without calling setState(), then the build method would not be
  // called again, and so nothing would appear to happen.
  //  _counter++;
//});
//}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
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
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 0, 10),
                      child: Text("LOGIN", style: TextStyle(fontSize: 20)))
                ])),
            Container(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )),
            Container(
                height: 50,
                width: 400,
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: ElevatedButton(
                  onPressed: _fun,
                  child: Text("LOGIN"),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.pink, onPrimary: Colors.white)))
                )),
            Container(
                margin: EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Container(
                    decoration: BoxDecoration(
                        //  color: Color.fromARGB(255, 217, 217, 217),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text("OR"),
                  ),
                  Expanded(child: Divider()),
                ])),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SignInButton(
                        Buttons.Facebook,
                        onPressed: () {},
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SignInButton(
                        Buttons.LinkedIn,
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("Need an account?",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                        child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Screen2(
                                    title: "Second Screen",
                                  ) as Widget))),
                      child: Text("SIGNUP",
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.grey,
                          )),
                    )),
                  ]),
            )
          ],
        ),
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _counter = 0;
  void _fun() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const Screen3() as Widget)));
  }

  // void _incrementCounter() {
  //setState(() {
  // This call to setState tells the Flutter framework that something has
  // changed in this State, which causes it to rerun the build method below
  // so that the display can reflect the updated values. If we changed
  // _counter without calling setState(), then the build method would not be
  // called again, and so nothing would appear to happen.
  //  _counter++;
//});
//}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
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
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 0, 10),
                      child: Text("SIGNUP", style: TextStyle(fontSize: 20)))
                ])),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 600,
              margin: EdgeInsets.fromLTRB(40, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      width: 200,
                      height: 50,
                      child: const TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'First Name',
                      ))),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 200,
                      height: 50,
                      child: const TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Last Name',
                      )))
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )),
            Container(
                height: 50,
                width: 400,
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: ElevatedButton(
                  onPressed: _fun,
                  child: Text("SIGNUP"),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.pink, onPrimary: Colors.white)))
                )),
            Container(
                margin: EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Container(
                    decoration: BoxDecoration(
                        //  color: Color.fromARGB(255, 217, 217, 217),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text("OR"),
                  ),
                  Expanded(child: Divider()),
                ])),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SignInButton(
                        Buttons.Facebook,
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SignInButton(
                        Buttons.LinkedIn,
                        text: "Sign up with LinkedIn",
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("Already have an account?",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                        child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MyHomePage(
                                    title: "FirstScreen",
                                  ) as Widget))),
                      child: Text("LOGIN",
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.grey,
                          )),
                    )),
                  ]),
            )
          ],
        ),
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

////////////////////////////////////////////////////////////////////////
///
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _counter = 0;
  void _fun() {}

  // void _incrementCounter() {
  //setState(() {
  // This call to setState tells the Flutter framework that something has
  // changed in this State, which causes it to rerun the build method below
  // so that the display can reflect the updated values. If we changed
  // _counter without calling setState(), then the build method would not be
  // called again, and so nothing would appear to happen.
  //  _counter++;
//});
//}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Before we let you go we need some of your information",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
