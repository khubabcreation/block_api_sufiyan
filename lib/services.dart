

import 'dart:convert';

import 'package:brand_new/home_page/modesl.dart';
import 'package:brand_new/urls.dart';
import 'package:http/http.dart';

Future<List<CommentModel>> getComments()async{
   Response response  =  await get(Uri.parse(AppUrls.baseUrl+AppUrls.commmentEndPoint));
  
   if(response.statusCode == 200){
     List data = jsonDecode(response.body);
     data.map<CommentModel>((e){
       print(e);
       return CommentModel(name: 'name', email: '', body: '');
     }).toList();//CommentModel.fromJson(e)).toList();
   }
   return [];

  
}