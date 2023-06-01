import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//null - Awarenss
// Accessing Properties of a null object
//How to know if some value is null or not
//Practincing how to use the .? method where you can check the value of an optional
//int without flagging an error
void test(List<String>? names) {
  //Optional List of Strings
  final numberOfNames = names?.length;
  if (numberOfNames == 0) {
    print('');
    print('No Name has been addded to the list\n\n');
  } else if (numberOfNames == 1) {
    print('');
    print('There is $numberOfNames name in the list\n\n');
  } else {
    print('');
    print('There are $numberOfNames names in the list\n\n');
  }

  //Practincing how to use the .? method where you can check the value of an optional
//int without flagging an error
  final length = names?.length;
  if (length == 0) {
    print('');
    print('No Name has been added to the list\n\n');
  } else if (length == 1) {
    print('');
    print('There is $length name in the list\n\n');
  } else {
    print('');
    print('There are $length names in the list\n\n');
  }

// if for some reason the list is a null and we can't extract the length of the list,
//this is what we do
//We make use of the ?? Operator
  final lengths = names?.length ?? 0;
  if (lengths == 0) {
    print('');
    print('No Name has been added to the list\n\n');
  } else if (lengths == 1) {
    print('');
    print('There is $lengths name in the list\n\n');
  } else {
    print('');
    print('There are $lengths names in the list\n\n');
  }
//What this is saying here is that,
//if you check you check your left hand side and the value is not a null then take,
//otherwise, display the Zer0 (0) indiciating it is a null and that it's length cannot be extracted

//All this while I have been using if and else statements to check the various ways in which I can
//print the length of the list.
//Now I am coming to attempt using the ?? and .? combined.
//Wish me luck
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.is oka
  @override
  Widget build(BuildContext context) {
    test([]);

    return MaterialApp(
      title: 'Flutter Demo || Day 5',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter | Dart || Day 5'),
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                "                            See the plus (+) sign down there?!\n" +
                    "Below is the number of times you have interacted with it 🫣"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
