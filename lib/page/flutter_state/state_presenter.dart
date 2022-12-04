import 'package:flutter/material.dart';
import 'package:study_plan_flutter/page/dart_page/isolate_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/json_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/library_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/socket_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/stdout_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/symbol_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/time_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/typedef_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/with_demo_page.dart';
import 'package:study_plan_flutter/page/dart_page/zone_demo_page.dart';

import '../dart_page/file_demo_page.dart';
import '../dart_page/map_demo_page.dart';
import '../dart_page/path_demo_page.dart';
import '../dart_page/process_demo_page.dart';
import '../dart_page/set_demo_page.dart';
import '../dart_page/string_demo_page.dart';
import '../dart_page/list_demo_page.dart';
import '../dart_page/num_demo_page.dart';
import '../dart_page/error_demo_page.dart';
import '../dart_page/generics_demo_page.dart';
import '../dart_page/key_demo_page.dart';
import '../dart_page/metadata_demo_page.dart';
import '../dart_page/packages_demo_page.dart';

var stateList = [
  "string",
  "num",
  "list",
];

bool handleState(BuildContext context, String name) {
  if (name == "string") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StringDemoPage()),
    );
    return true;
  } else if (name == "num") {
  }
  return false;
}