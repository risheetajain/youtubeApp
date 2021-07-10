import 'package:flutter/material.dart';
import 'package:youtubeApp/Articles.dart';
import 'package:youtubeApp/List1.dart';
import 'package:neumorphic/neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Lists(),
    );
  }
}

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GridView.count(
        //scrollDirection: ,
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        shrinkWrap: true,
        children: [
          Stack(children: [
            NeuCard(
                curveType: CurveType.flat,
                decoration: NeumorphicDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white30,
                ),
                bevel: 12,
                child: InkWell(
                  onTap: () {
                    //  print('Pressed !');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => List1()));
                  },
                  child: Center(
                    child:
                        Text('Youtube Videos', style: TextStyle(fontSize: 20)),
                  ),
                )),
            Align(
              child: Icon(Icons.play_circle_fill, size: 65, color: Colors.red),
              alignment: Alignment.topLeft,
            )
          ]),
          Stack(children: [
            NeuCard(
                curveType: CurveType.flat,
                decoration: NeumorphicDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white30,
                ),
                bevel: 12,
                child: InkWell(
                  onTap: () {
                    print('Pressed !');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Articles()));
                  },
                  child: Center(
                    child: Text('Articles', style: TextStyle(fontSize: 20)),
                  ),
                )),
            Align(
              child: Icon(Icons.article, size: 65, color: Colors.red),
              alignment: Alignment.topLeft,
            )
          ]),
        ],
      ),
    ));
  }
}
