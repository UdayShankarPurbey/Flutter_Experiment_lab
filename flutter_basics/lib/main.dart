import 'package:flutter/material.dart';
import 'package:flutter_basics/ui/font.dart';
import 'package:flutter_basics/widgets/roundedBtn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment Lab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),

        textTheme: TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          headlineMedium: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          headlineSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 6),
        ),
      ),
      home: const MyHomePage(title: 'Welcome to Experiment Lab'),
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

  var user_name = ["Uday", "Nitish", "Raghav", "Sudesh", "Prabhash"];

  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  var phoneText = TextEditingController();

  var time = DateTime.now();

  var colorList = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.lime,
    Colors.purpleAccent,
  ];

  buttonPress() {
    print("Button Clicked");
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

      /*
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
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      */
      // // TOPICS : CONTAINER WIDGET :-
      // body : Center(
      //   child : Container(
      //   width : 100,
      //   height :  100,
      //   color : const Color.fromARGB(255, 205, 255, 68),
      //   child : Text("Hi From Uday")
      //   )
      // )

      // // TOPICS : CENTER WIDGET :-
      // body: Center(
      //   child: Container(
      //     width: 200,
      //     height: 100,
      //     color: Colors.grey,
      //     child: Center(
      //       child: Text(
      //         "Hi Uday",
      //         style: TextStyle(
      //           fontFamily: 'Pacifico',
      //           fontStyle: FontStyle.italic,
      //           fontSize: 30,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // // TOPICS : TEXT WIDGET :-
      // body: Text(
      //   "Hi Uday",
      //   style: TextStyle(
      //     fontSize: 24,
      //     color: Colors.lightBlue,
      //     fontWeight: FontWeight.w200,
      //     backgroundColor: Colors.lightGreen[200],
      //   ),
      // ),

      // // TOPICS : BUTTON WIDGET :-
      //   // SUB-TOPIC : TEXT BUTTON WIDGET :-
      // body: TextButton(
      //   child: Text("Buy Now"),
      //   onPressed: () {
      //     print("User Click on Button");
      //   },
      //   onLongPress: () => {print("Long Press Executed.")},
      // ),

      // // // TOPICS : BUTTON WIDGET :-
      // //   // SUB-TOPIC : ELEVATED BUTTON WIDGET :-
      // body: ElevatedButton(
      //   child: Text("Buy Now"),
      //   onPressed: () {
      //     print("User Click");
      //   },
      // ),

      // // // TOPICS : BUTTON WIDGET :-
      // //   // SUB-TOPIC : OUTLINED BUTTON WIDGET :-
      // body: OutlinedButton(
      //   onPressed: () {
      //     print("Button Pressed");
      //   },
      //   child: Text("Click Now !"),
      // ),

      // // // TOPICS : IMAGE WIDGET :-
      // body : Center(
      //   child : Image.asset("assets/images/user-image-02.png")
      // )

      // // // // TOPICS : COLUMNS AND ROWS WIDGET :-
      // //   // SUB-TOPIC : COLUMNS WIDGET :-
      //  body: Container(
      //   height: 500,
      //   width: 500,
      //   color: Colors.red,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Text("A", style: TextStyle(fontSize: 25)),
      //       Text("B", style: TextStyle(fontSize: 25)),
      //       Text("C", style: TextStyle(fontSize: 25)),
      //       Text("D", style: TextStyle(fontSize: 25)),
      //       Text("E", style: TextStyle(fontSize: 25)),
      //       ElevatedButton(child: Text("Buy Now !") , onPressed: () {},)
      //     ],
      //   ),
      // ),

      // // // // TOPICS : COLUMNS AND ROWS WIDGET :-
      // //   // SUB-TOPIC : ROWS WIDGET :-
      // body: Container(
      //   height: 300,
      //   width: 500,
      //   color: Colors.red,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: <Text>[
      //       Text("A", style: TextStyle(fontSize: 25)),
      //       Text("B", style: TextStyle(fontSize: 25)),
      //       Text("C", style: TextStyle(fontSize: 25)),
      //       Text("D", style: TextStyle(fontSize: 25)),
      //       Text("E", style: TextStyle(fontSize: 25)),
      //     ],
      //   ),
      // ),

      // // // // // TOPICS : COLUMNS AND ROWS WIDGET :-
      // // //   // SUB-TOPIC :COLUMNS AND ROWS:-
      // body: Container(
      //   height : 500,
      //   color:  Colors.lightGreen,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Text("R1-A", style: TextStyle(fontSize: 22)),
      //           Text("R1-B", style: TextStyle(fontSize: 22)),
      //           Text("R1-C", style: TextStyle(fontSize: 22)),
      //           Text("R1-D", style: TextStyle(fontSize: 22)),
      //           Text("R1-E", style: TextStyle(fontSize: 22)),
      //         ],
      //       ),
      //       Text("A", style: TextStyle(fontSize: 22)),
      //       Text("B", style: TextStyle(fontSize: 22)),
      //       Text("C", style: TextStyle(fontSize: 22)),
      //       Text("D", style: TextStyle(fontSize: 22)),
      //       Text("E", style: TextStyle(fontSize: 22)),
      //     ],
      //   ),
      // ),

      // // // TOPICS : INKWELL WIDGET :-
      // body: Center(
      //   child: InkWell(
      //     onTap: () => {print("User Perform Tap Operation")},
      //     onLongPress: () {
      //       print("User Perform Long Press Operation");
      //     },
      //     onDoubleTap: () => {print("User Perform Double Tap Operation")},
      //     child: Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.tealAccent,
      //       child: Center(
      //         child: InkWell(
      //           onTap: () => print("User Click on Text."),
      //           child: Text("Click Here !"),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // // // TOPICS : SINGLE CHILD SCROLL VIEW WIDGET :-
      // body: SingleChildScrollView(
      //     // scrollDirection: Axis.vertical,
      //   child: Padding(
      //     padding: EdgeInsetsGeometry.all(8.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.tealAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 1 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.lime,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 2 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.redAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 3 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.orange,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 4 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.greenAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 5 "),
      //               ),
      //              Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.tealAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 6 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.lime,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 7 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.redAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 8 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.orange,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 9 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.greenAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 10 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.tealAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 11 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.lime,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 12 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.redAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 13 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.orange,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 14 "),
      //               ),
      //               Container(
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.greenAccent,
      //                 margin: EdgeInsets.all(2.0),
      //                 child: Text("BOX - 15 "),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.tealAccent,
      //           margin: EdgeInsets.only(bottom: 10),
      //           child: Text("BOX - 1 "),
      //         ),
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.lime,
      //           margin: EdgeInsets.only(bottom: 10),
      //           child: Text("BOX - 2 "),
      //         ),
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.redAccent,
      //           margin: EdgeInsets.only(bottom: 10),
      //           child: Text("BOX - 3 "),
      //         ),
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.orange,
      //           margin: EdgeInsets.only(bottom: 10),
      //           child: Text("BOX - 4 "),
      //         ),
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.greenAccent,
      //           margin: EdgeInsets.only(bottom: 10),
      //           child: Text("BOX - 5 "),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // // // TOPICS : LISTVIEW AND ITS COMPONENTS :-
      // //   // SUB-TOPIC : LISTVIEW WIDGET :-
      // body: Center(
      //   child: ListView(
      //     scrollDirection:Axis.horizontal,
      //     reverse: true,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "one",
      //           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "two",
      //           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "three",
      //           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "four",
      //           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "five",
      //           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // // // TOPICS : LISTVIEW AND ITS COMPONENTS :-
      // //   // SUB-TOPIC : LISTVIEW BUILDER WIDGET :-
      // body : ListView.builder(
      //   itemCount: user_name.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Text(user_name[index] , style: TextStyle(fontSize: 21 , fontWeight: FontWeight.w600));
      //   },
      //   // reverse: true,
      //   itemExtent: 100,
      //   scrollDirection: Axis.horizontal,
      // ),

      // // // TOPICS : LISTVIEW AND ITS COMPONENTS :-
      // //   // SUB-TOPIC : LISTVIEW SEPERATOR WIDGET :-
      // body : ListView.separated(
      //   itemCount: user_name.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Text(user_name[index] , style: TextStyle(fontSize: 21 , fontWeight: FontWeight.w600));
      //   },
      //   separatorBuilder: (context, index) {
      //     return Divider(height:4 , thickness: 4,);
      //   },
      // ),

      // // // // TOPICS : BOX DECORATION  :-
      // body : Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.blue.shade50,
      //   child: Center(
      //     child: Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         color: Colors.blueGrey,
      //         // borderRadius: BorderRadius.circular(10)
      //         // borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , bottomRight: Radius.circular(20)),
      //         border: Border.all(color: Colors.black54 , width: 2),
      //         boxShadow: [BoxShadow(
      //           color: const Color.fromARGB(66, 24, 23, 23),
      //           blurRadius: 5,
      //           spreadRadius: 7
      //         )],
      //         shape: BoxShape.circle
      //       ),
      //     ),
      //   ),
      // )

      // // TOPICS : EXPANDED WIDGET  :-
      // body: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Column(
      //       children: [
      //         Expanded(
      //           child: Container(width: 50, height: 100, color: Colors.blue),
      //           flex: 3,
      //         ),
      //         Expanded(
      //           child: Container(width: 50, height: 100, color: Colors.red),
      //           flex: 1,
      //         ),
      //         Expanded(
      //           child: Container(width: 50, height: 100, color: Colors.amber),
      //           flex: 1,
      //         ),
      //         Expanded(
      //           child: Container(width: 50, height: 100, color: Colors.green),
      //           flex: 1,
      //         ),
      //         Expanded(
      //           child: Container(width: 50, height: 100, color: Colors.pink),
      //           flex: 1,
      //         ),
      //         Expanded(
      //           child: Container(
      //             width: 50,
      //             height: 100,
      //             color: Colors.tealAccent,
      //           ),
      //           flex: 3,
      //         ),
      //       ],
      //     ),
      //     Expanded(
      //       child: Container(width: 50, height: 100, color: Colors.blue),
      //       flex: 1,
      //     ),
      //     Expanded(
      //       child: Container(width: 50, height: 100, color: Colors.red),
      //       flex: 1,
      //     ),
      //     Expanded(
      //       child: Container(width: 50, height: 100, color: Colors.amber),
      //       flex: 1,
      //     ),
      //     Expanded(
      //       child: Container(width: 50, height: 100, color: Colors.green),
      //       flex: 1,
      //     ),
      //     Expanded(
      //       child: Container(width: 50, height: 100, color: Colors.pink),
      //       flex: 1,
      //     ),
      //     Expanded(
      //       child: Container(width: 50, height: 100, color: Colors.tealAccent),
      //       flex: 2,
      //     ),
      //   ],
      // ),

      // // TOPICS : MARGIN & PADDING  :-
      // body: Padding(
      //   // padding: const EdgeInsets.all(8.0),
      //   padding: EdgeInsetsGeometry.only(left: 10),
      //   child: Container(
      //     height: 50,
      //     width: 200,
      //     color: Colors.cyan,
      //     margin: EdgeInsets.all(8.0), // provides space form outside
      //     padding: EdgeInsets.all(8.0), // provides space form inside
      //     child: Text(
      //       "Hello World",
      //       style: TextStyle(fontSize: 24, color: Colors.white),
      //     ),
      //   ),
      // ),

      // // // TOPICS : LIST TILE  :-
      // body: ListView.separated(
      //   itemCount: user_name.length,
      //   separatorBuilder: (BuildContext context, int index) {
      //     return Divider(
      //       thickness: 4,
      //       height: 10,
      //     );
      //   },
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(
      //       leading: Text("${index + 1}"),
      //       title: Text(user_name[index]),
      //       subtitle: Text("Person ${index + 1} is ${user_name[index]}"),
      //       trailing: Icon(Icons.add)
      //     );
      //   },
      // ),

      // // TOPICS : CIRCLE AVATAR  :-
      // body: Center(
      //   child: CircleAvatar(
      //     child: Text("U", style: TextStyle(fontSize: 18)),
      //     backgroundImage: AssetImage("assets/images/user-image-02.png"),
      //     backgroundColor: Colors.greenAccent,
      //     radius: 50,
      //     // minRadius: 20,
      //     // maxRadius: 100,
      //   ),
      // ),

      // // // TOPICS : CUSTOM FONT  :-
      // body: Text("hello world" , style: TextStyle(fontFamily: 'Volkhov' , fontSize: 20)),

      // // // TOPICS : STYLES AND THEMES  :-
      // body: Column(
      //   children: [
      //     Text("Hello World", style: mTextStyleColor(Theme.of(context).textTheme.headlineLarge,Colors.orange)),
      //     Text("Hello World", style: Theme.of(context).textTheme.headlineMedium),
      //     Text("Hello World", style: Theme.of(context).textTheme.headlineSmall),
      //     Text("Hello World", style: mTextStyleColor(Theme.of(context).textTheme.headlineLarge,Colors.green)),
      //     Text("Hello World", style: Theme.of(context).textTheme.headlineMedium),
      //     Text("Hello World", style: Theme.of(context).textTheme.headlineSmall),
      //   ],
      // ),

      // // // TOPICS : CARD WIDGET :-
      // body: Center(
      //   child: Card(
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Hello World", style: TextStyle(fontSize: 24),),
      //     ),
      //   ),
      // ),

      // // // TOPICS : TEXT INPUT WIDGET :-
      // body: Center(
      //   child: Container(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           controller: emailText,
      //           keyboardType: TextInputType.emailAddress,
      //           // enabled: false,
      //           decoration: InputDecoration(
      //             hint: Text("Enter Your Email"),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.amber, width: 2),
      //               // borderRadius: BorderRadius.circular(21)
      //               borderRadius: BorderRadius.all(Radius.circular(20)),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.cyan, width: 2),
      //               // borderRadius: BorderRadius.circular(21)
      //               borderRadius: BorderRadius.all(Radius.circular(20)),
      //             ),
      //             disabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.red, width: 2),
      //               // borderRadius: BorderRadius.circular(21)
      //               borderRadius: BorderRadius.all(Radius.circular(20)),
      //             ),
      //             // suffixText: "hi",
      //             // suffixIcon: IconButton(
      //             //   onPressed: () {},
      //             //   icon: Icon(Icons.remove_red_eye, color: Colors.red),
      //             // ),
      //             prefixIcon: Icon(Icons.email),
      //           ),
      //         ),
      //         Container(height: 11),
      //         TextField(
      //           keyboardType: TextInputType.phone,
      //           controller: phoneText,
      //           decoration: InputDecoration(
      //             hint: Text("Enter Your Phone No"),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             prefixIcon: Icon(Icons.call),
      //             disabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               borderSide: BorderSide(color: Colors.red, width: 2),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               borderSide: BorderSide(color: Colors.amber, width: 2),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               borderSide: BorderSide(color: Colors.cyan, width: 2),
      //             ),
      //           ),
      //         ),
      //         Container(height: 11),
      //         TextField(
      //           controller: passwordText,
      //           obscureText: true,
      //           obscuringCharacter: '*',
      //           decoration: InputDecoration(
      //             hint: Text("Enter Your Password"),
      //             disabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(20)),
      //               borderSide: BorderSide(color: Colors.red, width: 2),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(20)),
      //               borderSide: BorderSide(color: Colors.amber, width: 2),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               borderSide: BorderSide(color: Colors.cyan, width: 2),
      //             ),
      //             prefixIcon: Icon(Icons.lock),
      //             suffixIcon: IconButton(
      //               onPressed: () {},
      //               icon: Icon(Icons.remove_red_eye),
      //               color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(height: 11),
      //         ElevatedButton(
      //           onPressed: () {
      //             print(
      //               "Email : ${emailText.text.toString()} , Mobile : ${phoneText.text.toString()} and Password : ${passwordText.text.toString()} ",
      //             );
      //           },
      //           style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      //           child: Text("Login" , style: TextStyle(color: Colors.white),),
      //         ),
      //       ],
      //     ),
      //     width: 200,
      //   ),
      // ),

      // // // // TOPICS : GETTING CURRENT DATE & TIME :-
      // body: Center(
      //   child: Container(
      //     width: 500,
      //     height: 200,
      //     child: Column(
      //       children: [
      //         Text("Current Time : ${DateFormat('jms').format(time)}", style: TextStyle(fontSize: 24)),
      //         ElevatedButton(
      //           onPressed: () {
      //             // print("time : ${time}");
      //             // time = DateTime.now(); // it will change value but not reflect in ui
      //             setState(() {
      //                 time = DateTime.now();
      //             });
      //           },
      //           child: Text("Current Time"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // // // // TOPICS : DATE PICKER :-
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     child: Column(
      //       children: [
      //         Text("Select Date ", style: TextStyle(fontSize: 24)),
      //         ElevatedButton(
      //           onPressed: () async {
      //             DateTime? datePicked = await showDatePicker(
      //               context: context,
      //               firstDate: DateTime(1990),
      //               lastDate: DateTime.now(),
      //             );
      //             if (datePicked != null) {
      //               print(datePicked);
      //             }
      //           },
      //           child: Text("Show Date"),
      //         ),
      //         ElevatedButton(
      //           onPressed: () async {
      //             TimeOfDay? timePicked = await showTimePicker(
      //               context: context,
      //               initialTime: TimeOfDay.now(),
      //               initialEntryMode: TimePickerEntryMode.input
      //             );
      //             if (timePicked != null) {
      //               print(timePicked);
      //             }
      //           },
      //           child: Text("Show Time"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // // // TOPICS : GRID VIEW :-
      // // // SUB TOPIC : GRIDVIEW COUNT -
      // body: Container(
      //   width: 200,
      //   height: 200,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: GridView.count(
      //       crossAxisSpacing: 8,
      //       mainAxisSpacing: 8,
      //       crossAxisCount: 3,
      //       children: <Widget>[
      //         for (var i = 0; i < colorList.length; i++)
      //           Container(
      //             color: colorList[i],
      //             child: Center(
      //               child: Text("${i}", style: TextStyle(color: Colors.white)),
      //             ),
      //           ),
      //       ],
      //     ),
      //   ),
      // ),

      // // // // TOPICS : GRID VIEW :-
      // // // // SUB TOPIC : GRIDVIEW EXTENT -
      // body: Container(
      //   height: 400,
      //   child: GridView.extent(
      //     maxCrossAxisExtent: 200,
      //     children: <Widget>[
      //       for (var i = 0; i < colorList.length; i++)
      //         Container(
      //           color: colorList[i],
      //           child: Center(
      //             child: Text("${i}", style: TextStyle(color: Colors.white)),
      //           ),
      //         ),
      //     ],
      //   ),
      // ),

      // // // // TOPICS : GRID VIEW :-
      // // // // SUB TOPIC : GRIDVIEW BUILDER -
      // body: GridView.builder(
      //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   //   crossAxisCount: 3,
      //   // ),
      //    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
      //   itemBuilder: (context, index) {
      //     return Container(color: colorList[index]);
      //   },
      //   itemCount: colorList.length,
      // ),

      // // // // TOPICS : CALLBACK FUNCTION :-
      // body: ElevatedButton(onPressed: buttonPress, child: Text("Click Me!")),

      // // // // TOPICS : CUSTOM WIDGET :-
      // body: Column(
      //   children: [CatItems(), Contact(), SubCartItem(), BottomMenu()],
      // ),

      // // // // TOPICS : STACK WIDGET :-
      // body: Stack(
      //   children: [
      //     Container(width: 200, height: 200, color: Colors.blue),
      //     Container(width: 180, height: 180, color: Colors.green),
      //     Container(width: 160, height: 160, color: Colors.red),
      //     Container(width: 140, height: 140, color: Colors.yellow),
      //     Positioned(
      //       left: 20,
      //       top: 20,
      //       child: Container(width: 120, height: 120, color: Colors.deepPurpleAccent),
      //     ),
      //     Positioned(
      //       left: 40,
      //       top: 40,
      //       child: Container(width: 100, height: 100, color: Colors.tealAccent),
      //     ),
      //   ],
      // ),

      // // // // TOPICS : CUSTOM WIDGET :-
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 50,
      //         child: RoundedButton(
      //           btnName: "Play Now!!",
      //           icon: Icon(Icons.play_arrow),
      //           callBack: () => print("Play Button Clicked!"),
      //           bgColor: Colors.red,
      //           textStyle: TextStyle(color : Colors.yellow),
      //         ),
      //       ),
      //       Container(height: 15,),
      //       Container(
      //         width: 200,
      //         height: 50,
      //         child: RoundedButton(
      //           btnName: "Click Me!",
      //           icon: Icon(Icons.lock),
      //           callBack: () => print("Button Clicked!"),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // // // // TOPICS : WRAP WIDGET :-
      // body: Container(
      //   width:double.infinity,
      //   child: Wrap(
      //     direction: Axis.horizontal,
      //     spacing: 10,
      //     runSpacing: 10,
      //     alignment: WrapAlignment.center,
      //     children: [
      //       Container(width: 100, height: 100, color: Colors.red),
      //       Container(width: 100, height: 100, color: Colors.teal),
      //       Container(width: 100, height: 100, color: Colors.yellow),
      //       Container(width: 100, height: 100, color: Colors.deepPurpleAccent),
      //       Container(width: 100, height: 100, color: Colors.lightGreenAccent),
      //       Container(width: 100, height: 100, color: Colors.grey),
      //       Container(width: 100, height: 100, color: Colors.brown),
      //     ],
      //   ),
      // ),

      // // // // TOPICS : SIZEBOX WIDGET :-
      // body: Row(
      //   children: [
      //     SizedBox(
      //       width :100,
      //       height: 50,
      //       child: ElevatedButton(onPressed: () {}, child: Text("Button"))
      //     ),
      //     SizedBox(width: 10,),
      //      SizedBox(
      //       width :100,
      //       height: 50,
      //       child: ElevatedButton(onPressed: () {}, child: Text("Button"))
      //     ),
      //   ],
      // ),

      // // // // TOPICS : RICH TEXT WIDGET :-
      // body: RichText(
      //   text: TextSpan(
      //     style: TextStyle(color: Colors.grey, fontSize: 14),
      //     children: [
      //       TextSpan(text: "Hello "),
      //       TextSpan(text: "World " , style : TextStyle(color: Colors.red, fontSize: 20)),
      //       TextSpan(text: "Uday!!!!",style : TextStyle(fontFamily: "Volkhov" , fontSize: 30)),
      //     ],
      //   ),
      // ),

      // // // // // TOPICS : ICON WIDGET :-
      // body: Icon(Icons.camera_outdoor_outlined , color: Colors.teal,),
      
      // // // // TOPICS : AWASOME ICON WIDGET :-
      // body : FaIcon(FontAwesomeIcons.amazon , color: Colors.teal,)

      // // // // TOPICS : POSITIONED WIDGET :-
      body: Container(
        height: 500,
        width: 200,
        color: Colors.indigo,
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              right: 50,
              child: Container(
                height: 200,
                width : 100,
                color: Colors.red,
              ),
            )
          ]
        ),
      ),


      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      */
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                child: Center(child: Text("${index + 1}")),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("User - ${index + 1}"),
              subtitle: Text("Mobile No : +91-xxxxxxxxxx"),
              leading: CircleAvatar(backgroundColor: Colors.green),
              trailing: Icon(Icons.delete),
            );
          },
        ),
      ),
    );
  }
}

class SubCartItem extends StatelessWidget {
  const SubCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
