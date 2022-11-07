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

var dartList = [
  "string",
  "num",
  "list",
  "set",
  "map",
  "file",
  "key",
  "metadata",
  "generics",
  "error",
  "packages",
  "path",
  "process",
  "stdout",
  "time",
  "typedef",
  "zone",
  "isolate",
  "json",
  "library",
  "socket",
  "symbol",
  "with",
  "mixin",
];

bool handleDart(BuildContext context, String name) {
  if (name == "string") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StringDemoPage()),
    );
    return true;
  } else if (name == "num") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NumDemoPage()),
    );
    return true;
  } else if (name == "list") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ListDemoPage()),
    );
    return true;
  } else if (name == "set") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SetDemoPage()),
    );
    return true;
  } else if (name == "map") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapDemoPage()),
    );
    return true;
  } else if (name == "file") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FileDemoPage()),
    );
    return true;
  } else if (name == "key") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const KeyDemoPage()),
    );
    return true;
  } else if (name == "metadata") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MetaDataDemoPage()),
    );
    return true;
  } else if (name == "generics") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GenericsDemoPage()),
    );
    return true;
  } else if (name == "error") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ErrorDemoPage()),
    );
    return true;
  } else if (name == "packages") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PackagesDemoPage()),
    );
    return true;
  } else if (name == "path") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PathDemoPage()),
    );
    return true;
  } else if (name == "process") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProcessDemoPage()),
    );
    return true;
  } else if (name == "stdout") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StdoutDemoPage()),
    );
    return true;
  } else if (name == "time") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TimeDemoPage()),
    );
    return true;
  } else if (name == "typedef") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TypedefDemoPage()),
    );
    return true;
  } else if (name == "zone") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ZoneDemoPage()),
    );
    return true;
  } else if (name == "isolate") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const IsolateDemoPage()),
    );
    return true;
  } else if (name == "json") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const JsonDemoPage()),
    );
    return true;
  } else if (name == "library") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LibraryDemoPage()),
    );
    return true;
  } else if (name == "symbol") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SymbolDemoPage()),
    );
    return true;
  }  else if (name == "socket") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SocketDemoPage()),
    );
    return true;
  } else if (name == "with" || name == "mixin") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WithDemoPage()),
    );
    return true;
  }
  return false;
}