import 'package:brand_new/home_page/modesl.dart';
import 'package:flutter/material.dart';

class HomePageLoadedWidget extends StatelessWidget {
  List<CommentModel> list ;

  HomePageLoadedWidget({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      CommentModel commentModel =   list[index];
      print(commentModel);
       return ListTile(title: Text(commentModel.id.toString()),
         leading: CircleAvatar(
           child: Text(commentModel.postId.toString()),),subtitle: Text(commentModel.email!),);
    },itemCount: list.length,);

  }
}
