import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/datasource/remote/API.dart';
import 'package:flutter_application_1/data/datasource/remote/constants.dart';
import 'package:flutter_application_1/data/datasource/remote/config.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets\images\png-clipart-movies-and-popcorn-folder-icon-movies.png"),
        title: Text("Movie DB"),
        centerTitle: true,),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:Column(
              children:[
                FutureBuilder(
                  future: APIService.api.showMovieData(),
                    builder: (context,snapshot){
                      if(snapshot.hasData){
                        MovieResponse responses = snapshot.data!;
                        list<resulte> movies = responses.results!;
                        return GridView.builder(
                          shrinkWrap: true ,
                          physics: const neverScrollableScrollPhysics(),
                          itemCount: movieResponse.results?.length ?? 0,
                          gridDelegate: 
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:2 ,
                            crossAxisSpasing:8 ,
                            mainAxisSpacing:8 ,
                          ),
                          itemBuilder: (context,index) => GestureDetectore(
                            onTap: () {
                              _navigateToMovie(MovieResponse.results![index]);
                            },
                          )
                        );
                      } else if(snapshot.hasError){
                          return Center(
                            child: Text(snapshot.error.toString()),
                            );
                        } else{
                            return CircularProgressIndicator();
                          }
                    },
                )



              ]

            
          )
        ),



      ),

      );

      
  }
}
