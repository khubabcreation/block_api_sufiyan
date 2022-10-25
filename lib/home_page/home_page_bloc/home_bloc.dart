

import 'dart:io';

import 'package:brand_new/home_page/modesl.dart';
import 'package:brand_new/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_events.dart';
import 'home_states.dart';

class HomePageBloc extends Bloc<HomeEvent, HomeState>{
   HomePageBloc():super(HomeInitialState()){

     on<HomeFetchEvent>((HomeFetchEvent event,Emitter<HomeState> emit)async {
          emit(HomeLoadingState());
          try{
            List<CommentModel> list= await getComments();
            print(list);
            emit(HomeLoadedState(list: list));
          }on HttpException catch(e){
            emit(HomeErrorState(errorMsg: e.message));
          }
          catch(e){
            emit(HomeErrorState(errorMsg: e.toString()));
          }
     },);




   }


}