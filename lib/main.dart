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
            /* Container(
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
            ), */
            Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
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
  void _fun222() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const Screen4() as Widget)));
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
              margin: EdgeInsets.fromLTRB(0, 200, 0, 10),
              child: Icon(
                Icons.fingerprint_outlined,
                size: 100,
                color: Colors.pink,
              ),
            ),
            Container(
                child: Text(
              "Enable Fingerprint",
              style: TextStyle(
                fontSize: 20,
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 200,
                height: 100,
                child: Text(
                  "If you enable touch ID,you don't need to enter your password when you login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.pink),
              child: ElevatedButton(
                onPressed: () => _fun222(),
                child: Text("Continue"),
              ),
            ),
            Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                    onPressed: () => null,
                    child: Text("Not Now"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.grey,
                    ))),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////
class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  int _counter = 0;
  void _fun222() {}

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Text(
                  "Which one are you?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: IconButton(
                        icon: const Icon(Icons.female),
                        iconSize: 50,
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: IconButton(
                        icon: const Icon(Icons.male),
                        iconSize: 50,
                        color: Colors.yellow,
                        onPressed: () {},
                      ),
                    )
                  ]),
            ),
            /*  Container(
              margin: EdgeInsets.fromLTRB(0, 200, 0, 10),
              child: Icon(
                Icons.fingerprint_outlined,
                size: 100,
                color: Colors.pink,
              ),
            ), */
            SizedBox(
              height: 10,
            ),
            /*  Container(
                child: Text(
              "Enable Fingerprint",
              style: TextStyle(
                fontSize: 20,
              ),
            )),
            SizedBox(
              height: 10,
            ), */
            Container(
                width: 200,
                height: 100,
                child: Text(
                  "To give you a better experience we need to know your gender",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.pink),
              child: ElevatedButton(
                onPressed: () => _fun222(),
                child: Text("Continue"),
              ),
            ),
            Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                    onPressed: () => null,
                    child: Text("Not Now"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.grey,
                    ))),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
