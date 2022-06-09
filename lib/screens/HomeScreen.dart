import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/PostModel.dart';

List<PostModel> postList = [];

Future<List<PostModel>> getPostApi() async{
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200){
    for (Map i in data){
      postList.add(PostModel.fromJson(i));
    }return postList;
  }else{
    return postList;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Api"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context , snapshot){
                  if(!snapshot.hasData){
                    return const Text("Loading");
                  }else{
                    return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context, index){
                          return Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(postList[index].userId.toString(),),
                                Text(postList[index].title.toString())
                              ],
                            ),
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}

