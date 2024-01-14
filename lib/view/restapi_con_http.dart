import 'package:act2_flutterjson/service/remote_service_http.dart';
import 'package:flutter/material.dart';
import 'package:act2_flutterjson/model/restapi_con_http_post.dart';

class RestApiConHttp extends StatefulWidget {
  const RestApiConHttp({super.key});

  @override
  State<RestApiConHttp> createState() => _RestApiConHttpState();
}

class _RestApiConHttpState extends State<RestApiConHttp> {

  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState(){
    super.initState();
    getData();
  }

  //extraer data
  getData() async{
    posts = await RemoteServiceHttp().getPosts();
    if(posts != null)
    {
      setState((){
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Api con Http - Posts'),
        ),

      body: Visibility(
        visible: isLoaded,

        replacement: const Center(
          child: CircularProgressIndicator(),
          ),

        child: ListView.builder(
          //itemCount: 10,
          itemCount: posts?.length,
          itemBuilder: (context, index){
            return Container(
              padding: const EdgeInsets.all(16),

              //child: Text('Hi'),
              child: Row(
                children: [
                  Container(
                    height:50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts![index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        Text(
                            posts![index].body ?? '',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ), 
      ),

    );
  }    
  //widget
}