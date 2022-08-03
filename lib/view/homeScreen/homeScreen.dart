import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart'; 
import 'package:news_app_rest_api/models/news_response_model.dart';
import 'package:news_app_rest_api/services/apiEndpoint/news_services.dart';
import 'package:news_app_rest_api/view/homeScreen/widgets/newsCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Row(
          children: const [
            Text('Daily'),
            Text(
              ' News',
              style: TextStyle(color: Colors.blueAccent),
            )
          ],
        ),
        centerTitle: true,
      ),

      body: FutureBuilder(future: NewsApiServices().fetchNewsArticles(),
      builder: (context,AsyncSnapshot<List<Article>?>snap){

        if(snap.connectionState==ConnectionState.waiting){
          return const Center(child: 
          CircularProgressIndicator(),);
        }else if(!snap.hasData){
                print('No Data');
        }

        return ListView.builder(
          
          shrinkWrap: true
          ,
          itemCount: snap.data!.length,
          itemBuilder:(context, index) {
           
           return NewsCard(snap: snap.data![index],);
        });

      }),
    );
  }
}
