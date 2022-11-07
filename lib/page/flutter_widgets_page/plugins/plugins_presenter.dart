import 'package:flutter/material.dart';
import 'package:study_plan_flutter/page/flutter_widgets_page/plugins/dio_demo_page.dart';
import 'package:study_plan_flutter/page/flutter_widgets_page/plugins/http_multi_demo_page.dart';

import 'http_demo_page.dart';

var flutterList = [
  "http",
  "dio",
  "http_multi_server",
  "cookie_jar",
  "fluttertoast",
  "flutter_swiper",
  "flutter_webview_plugin",
  "flutter_html",
  "zefyr",
  "flutter_html_view",
  "flutter_html_textview",
  "markdown",
  "html2md",
  "flutter_easyrefresh",
  "common_utils",
  "date_format",
  "flutter_calendar",
  "flutter_picker",
  "city_picker",
  "file_picker",
  "badges",
  "font_awesome_flutter",
  "flutter_slidable",
  "dragablegridview_flutter",
  "flutter_staggered_animations",
  "azlistview",
  "flutter_spinkit",
  "badge",
  "flukit",
  "flutter_local_notifications",
  "cool_ui",
  "image_picker",
  "image",
  "transparent_image",
  "cached_network_image",
  "photo_view",
  "carousel_slider",
  "zoomable_image",
  "flutter_svg",
  "camera",
  "flutter_image_compress",
  "chewie",
  "video_player",
  "audioplayer",
  "audioplayers",
  "spritewidget",
  "fluro",
  "flutter_local_notifications",
  "url_launcher",
  "firebase_messaging",
  "event_bus",
  "sqflite",
  "shared_preferences",
  "file_cache",
  "flutter_cache_manager",
  "html_unescape",
  "html",
  "crypto",
  "path_provider",
  "connectivity",
  "device_info",
  "package_info",
  "flutter_blue",
  "share",
  "open_file",
  "simple_permissions",
  "amap_base",
  "map_view",
  "flutter_map",
  "location",
  "latlong",
  "qr_flutter",
  "barcode_scan",
  "qrcode_reader",
  "fl_chart",
  "chats_flutter",
  "charts_common",
  "flutter_circular_chart",
  "rxdart",
  "rx_widgets",
  "rx_command",
  "provide",
  "provider",
  "intl",
  "flutter_app_badget",
  "pwa",
  "fluwx",
  "tobias"
];

bool handleFlutter(BuildContext context, String name) {
  if (name == "http") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HttpDemoPage()),
    );
    return true;
  } else if (name == "dio") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DioDemoPage()),
    );
    return true;
  } else if (name == "http_multi_server") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HttpMultiDemoPage()),
    );
    return true;
  } else if (name == "cookie_jar") {
    return true;
  } else if (name == "fluttertoast") {
    return true;
  } else if (name == "flutter_swiper") {
    return true;
  } else if (name == "flutter_webview_plugin") {
    return true;
  } else if (name == "flutter_html") {
    return true;
  } else if (name == "zefyr") {
    return true;
  } else if (name == "flutter_html_view") {
    return true;
  } else if (name == "flutter_html_textview") {
    return true;
  } else if (name == "markdown") {
    return true;
  } else if (name == "html2md") {
    return true;
  } else if (name == "flutter_easyrefresh") {
    return true;
  } else if (name == "common_utils") {
    return true;
  } else if (name == "date_format") {
    return true;
  } else if (name == "flutter_calendar") {
    return true;
  } else if (name == "flutter_picker") {
    return true;
  } else if (name == "city_picker") {
    return true;
  } else if (name == "file_picker") {
    return true;
  } else if (name == "badges") {
    return true;
  } else if (name == "font_awesome_flutter") {
    return true;
  } else if (name == "flutter_slidable") {
    return true;
  } else if (name == "dragablegridview_flutter") {
    return true;
  } else if (name == "flutter_staggered_animations") {
    return true;
  } else if (name == "azlistview") {
    return true;
  } else if (name == "flutter_spinkit") {
    return true;
  } else if (name == "badge") {
    return true;
  } else if (name == "flukit") {
    return true;
  } else if (name == "flutter_local_notifications") {
    return true;
  } else if (name == "cool_ui") {
    return true;
  } else if (name == "image_picker") {
    return true;
  } else if (name == "image") {
    return true;
  } else if (name == "transparent_image") {
    return true;
  } else if (name == "cached_network_image") {
    return true;
  } else if (name == "photo_view") {
    return true;
  } else if (name == "carousel_slider") {
    return true;
  } else if (name == "zoomable_image") {
    return true;
  } else if (name == "flutter_svg") {
    return true;
  } else if (name == "camera") {
    return true;
  } else if (name == "flutter_image_compress") {
    return true;
  } else if (name == "chewie") {
    return true;
  } else if (name == "video_player") {
    return true;
  } else if (name == "audioplayer") {
    return true;
  } else if (name == "audioplayers") {
    return true;
  } else if (name == "spritewidget") {
    return true;
  } else if (name == "fluro") {
    return true;
  } else if (name == "flutter_local_notifications") {
    return true;
  } else if (name == "url_launcher") {
    return true;
  } else if (name == "firebase_messaging") {
    return true;
  } else if (name == "event_bus") {
    return true;
  } else if (name == "sqflite") {
    return true;
  } else if (name == "shared_preferences") {
    return true;
  } else if (name == "file_cache") {
    return true;
  } else if (name == "flutter_cache_manager") {
    return true;
  } else if (name == "html_unescape") {
    return true;
  } else if (name == "html") {
    return true;
  } else if (name == "crypto") {
    return true;
  } else if (name == "path_provider") {
    return true;
  } else if (name == "connectivity") {
    return true;
  } else if (name == "device_info") {
    return true;
  } else if (name == "package_info") {
    return true;
  } else if (name == "flutter_blue") {
    return true;
  } else if (name == "share") {
    return true;
  } else if (name == "open_file") {
    return true;
  } else if (name == "simple_permissions") {
    return true;
  } else if (name == "amap_base") {
    return true;
  } else if (name == "map_view") {
    return true;
  } else if (name == "flutter_map") {
    return true;
  } else if (name == "location") {
    return true;
  } else if (name == "latlong") {
    return true;
  } else if (name == "qr_flutter") {
    return true;
  } else if (name == "barcode_scan") {
    return true;
  } else if (name == "qrcode_reader") {
    return true;
  } else if (name == "fl_chart") {
    return true;
  } else if (name == "chats_flutter") {
    return true;
  } else if (name == "charts_common") {
    return true;
  } else if (name == "flutter_circular_chart") {
    return true;
  } else if (name == "rxdart") {
    return true;
  } else if (name == "rx_widgets") {
    return true;
  } else if (name == "rx_command") {
    return true;
  } else if (name == "provide") {
    return true;
  } else if (name == "provider") {
    return true;
  } else if (name == "intl") {
    return true;
  } else if (name == "flutter_app_badget") {
    return true;
  } else if (name == "pwa") {
    return true;
  } else if (name == "fluwx") {
    return true;
  } else if (name == "tobias") {
    return true;
  }
  return false;
}
