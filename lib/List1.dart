import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:youtubeApp/ListModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class List1 extends StatefulWidget {
  @override
  _List1State createState() => _List1State();
}

class _List1State extends State<List1> {
  List<Items> list;
  bool loaing = false;
  var url =
      "https://www.googleapis.com/youtube/v3/search?key=AIzaSyDBLxngdSQ2ORZdeTiaWu_VH3Fn-Cd6Z58&channelId=UC87v13IS2YTIAx5vkExFaxg&part=snippet&order=date&maxResults=40";
  Future<List<Items>> fetchData1() async {
    final response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    print(response.body);
    if (response.statusCode == 200) {
      //  return
      var data = json.decode(response.body);
      var res = data["items"] as List;
      //print(res);
      list = res.map<Items>((json) => Items.fromJson(json)).toList();
      print(res);
      setState(() {
        loaing = true;
      });
      return list;
    } else {
      throw Exception('Failed to load Youtube List');
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      fetchData1();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Youtube App"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: loaing
            ? ListView.builder(
                itemBuilder: (context, int inx) {
                  return InkWell(
                    child: Card(
                        child: Column(children: [
                      Stack(children: [
                        Image(
                          image: NetworkImage(
                              '${(list[inx]).snippet.thumbnails.high.url}'),
                        ),
                        Center(
                            child: Align(
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                          ),
                          alignment: Alignment.center,
                        ))
                      ]),
                      ListTile(
                        title: Text(
                          list[inx].snippet.title,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ])),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  webvi2((list[inx].id).videoId)));
                    },
                  );
                },
                itemCount: 19,
              )
            : Center(child: CircularProgressIndicator()));
  }

  Widget webvi2(String id) {
    return WebView(
      initialUrl: 'https://youtu.be/$id',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
