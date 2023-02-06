import 'package:chat_dbestech/common/routes/pages.dart';
import 'package:chat_dbestech/common/routes/routes.dart';
import 'package:chat_dbestech/common/services/storage.dart';
import 'package:chat_dbestech/common/store/config.dart';
import 'package:chat_dbestech/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Get.putAsync<StorageService>(
    () => StorageService().init(),
  );
  Get.put<ConfigStore>(ConfigStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      minTextAdapt: true,
      builder: (context, _) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppPages.initial,
        getPages: AppRoutes.pages,
        // home: const Center(
        //   child: Text('Project Started'),
        // ),
      ),
    );
  }
}
