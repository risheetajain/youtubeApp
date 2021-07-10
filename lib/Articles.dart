import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:youtubeApp/ArticleModel.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:developer' as developer;

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  List<Article> list;
  bool loaing = false;
  var url =
      "http://amolannadate.com/wp-json/wp/v2/posts?_fields=link,featured_media,title,better_featured_image.media_details.sizes.medium.source_url&per_page=90&exclude=778,765&offset=0";
  Future<List<Article>> fetchData1() async {
    final response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    //print(response.body);
    if (response.statusCode == 200) {
      //  return
      var data = json.decode(response.body);
      var res = data as List;
      print(res);
      list = res.map<Article>((json) => Article.fromJson(json)).toList();
      print(list);
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
          title: Text("Articles "),
          centerTitle: true,
          backgroundColor: Colors.red,

          // automaticallyImplyLeading: false,
        ),
        body: loaing
            ? ListView.separated(
                separatorBuilder: (context, int) {
                  return SizedBox(
                    height: 20,
                    child: Divider(),
                  );
                },
                itemBuilder: (context, int inx) {
                  String str = (list[0])
                      .betterFeaturedImage
                      .mediaDetails
                      .sizes
                      .medium
                      .sourceUrl;
                  developer.log(str, name: 'link');
                  return ListTile(
                    title: Text('${list[inx].title.rendered}'),
                    leading: Image.network(
                        '${(list[inx]).betterFeaturedImage.mediaDetails.sizes.medium.sourceUrl}'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  webvi2(("${list[inx].link}"))));
                    },
                  );
                },
                itemCount: 80,
              )
            : Center(child: CircularProgressIndicator()));
  }

  Widget webvi2(String id) {
    return WebView(
      initialUrl: "$id",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
