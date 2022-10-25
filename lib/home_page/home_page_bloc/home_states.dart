
import 'package:brand_new/home_page/modesl.dart';
import 'package:flutter/material.dart';

@immutable
class HomeState{
  const HomeState();
}


class HomeInitialState extends HomeState{

}


class HomeLoadingState extends HomeState{

}


class HomeLoadedState extends HomeState{
 List<CommentModel> list;
 HomeLoadedState({required this.list});

}



class HomeErrorState extends HomeState{
String errorMsg;
HomeErrorState({required this.errorMsg});

}