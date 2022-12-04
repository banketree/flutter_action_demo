import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:study_plan_flutter/page/flutter_state/redux/storeconnector_widget.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  String title;

  FirstPage(this.title) : super();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              maxLines: 1,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StoreConnectorTextWidget(),
          ),

          AsyncAddButton("异步加二",2),

          RaisedButton(
            child: Text("跳转到第二页"),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return SecondPage("第二页");
              }));
              debugPrint("跳转到第二页");
            },
          ),

        ],
      ),
    ));
  }
}
