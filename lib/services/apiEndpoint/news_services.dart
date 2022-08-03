import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app_rest_api/models/news_response_model.dart';
import 'package:news_app_rest_api/view/constant/api.dart';

class NewsApiServices {
 static String apiKey='b0a8627f53ba4894b6db87ae1a786286';
  final url='https://newsapi.org/v2/everything?q=tesla&from=2022-07-03&sortBy=publishedAt&apiKey=';
  // final dio =
  //     Dio(BaseOptions(baseUrl: Api.baseUrl, responseType: ResponseType.plain));
final _dio=Dio(BaseOptions(responseType: ResponseType.plain,));


Future <List<Article>?>  fetchNewsArticles()async{
  try{
  final response=await _dio.get('$url$apiKey');

  if(response.statusCode==200){
final data= getDataModelFromJson(response.data);

   return data.articles;
  }
 

  
  }catch(e){
    print(e.toString());

  }return null;
}



}
