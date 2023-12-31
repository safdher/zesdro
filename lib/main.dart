import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zesdro/app/utils/dbHelper.dart';
import 'package:zesdro/app/utils/globalVariables.dart';
import 'package:zesdro/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  GetStorage.init();
  GlobalVariables.instance.objectbox = await ObjectBox.create();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zesdro",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
