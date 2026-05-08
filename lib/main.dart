import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:smart_sme_app/app/data/providers/auth_provider.dart';
import 'package:smart_sme_app/app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 init local storage
  await GetStorage.init();

  // 🔥 global service (biometric / auth)
  Get.put<AuthService>(AuthService(), permanent: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Smart SME App",
      debugShowCheckedModeBanner: false,

      // 🔥 start dari splash
      initialRoute: AppPages.INITIAL,

      // 🔥 semua route
      getPages: AppPages.routes,

      // 🔥 fallback kalau salah route
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const Scaffold(
          body: Center(
            child: Text("404 - Page Not Found"),
          ),
        ),
      ),

      // 🔥 theme dasar
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}