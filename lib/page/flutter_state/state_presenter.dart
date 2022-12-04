import 'package:flutter/material.dart';

import 'redux/redux_home.dart';

var stateList = [
  "redux",
  "bloc",
  "getX",
  "provide",
  "provider",
];

bool handleState(BuildContext context, String name) {
  if (name == "redux") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => getReduxHome()),
    );
    return true;
  } else if (name == "bloc") {
  } else if (name == "getX") {
  } else if (name == "provide") {
  } else if (name == "provider") {}
  return false;
}
