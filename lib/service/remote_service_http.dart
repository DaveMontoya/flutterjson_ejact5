import 'package:act2_flutterjson/model/restapi_con_http_post.dart';
import 'package:http/http.dart' as http; 

class RemoteServiceHttp
{
  Future<List<Post>?> getPosts() async
  //Future<void> getPosts() async
  {
    var client = http.Client();
    //Uri.http es un constructor
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    //si se tiene headers van aqui
    
    if(response.statusCode == 200){
      var json = response.body;
      return postFromJson(json);
    }
  }
}