import 'package:flutter/material.dart';

class JsonDemoPage extends StatefulWidget {
  const JsonDemoPage({Key? key}) : super(key: key);

  @override
  JsonDemoPageState createState() => JsonDemoPageState();
}

class JsonDemoPageState extends State<JsonDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Json Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            var user = User.fromJson(\"""
                          {
                          "username": "yugo",
                          "email": "belovedyogurt@gmail.com",
                          "gender": "male"
                          }
                          \""");
            print(user.email);                                                                         
            print(user.toJson());
          
            print(user.rebuild((b) => b..email="xxqq.com").toJson());
          
          
            var b = user.toBuilder();
            b.email = "xxxaaa.com";
            b.books.withBase(() => {"hello", "hello"});
            print(b.build().toJson());
              """),
          ],
        ),
      ),
    );
  }
}