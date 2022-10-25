import 'package:brand_new/home_page/home_page_bloc/home_events.dart';
import 'package:brand_new/home_page/widgets/home_loaded_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../home_page_bloc/home_bloc.dart';
import '../home_page_bloc/home_states.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<HomePageBloc>(context,listen: false).add(HomeFetchEvent());
    return Scaffold(appBar: AppBar(),
    body:BlocBuilder<HomePageBloc, HomeState>(
      builder: (context, state) {
        if(state is HomeInitialState){
          return SizedBox();
        }
        else if(state is HomeLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(state is HomeLoadedState){
          return HomePageLoadedWidget(list: state.list);
        }
        else if(state is HomeErrorState){
          return Center(child: Text(state.errorMsg),);
        }
        else{
          return SizedBox(child: Text('koi'),);
        }
      },
    )
    );
  }
}


