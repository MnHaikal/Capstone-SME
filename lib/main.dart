import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

<<<<<<< HEAD
// Import Service dan Route
import 'package:smart_sme_app/app/data/services/auth_service.dart'; // Pastikan path ini benar
import 'package:smart_sme_app/app/routes/app_pages.dart';

void main() async {
  // Memastikan binding framework Flutter sudah siap
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 Inisialisasi Local Storage (GetStorage)
  await GetStorage.init();

  // 🔥 Inisialisasi Global Service (Biometric / Auth)
  // Menggunakan permanent: true agar service tidak dihapus dari memori
  Get.put<AuthService>(AuthService(), permanent: true); 
=======
import 'package:smart_sme_app/app/data/providers/auth_provider.dart';
import 'package:smart_sme_app/app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 init local storage
  await GetStorage.init();

  // 🔥 global service (biometric / auth)
  Get.put<AuthService>(AuthService(), permanent: true);
>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
<<<<<<< HEAD
      title: "Smart-SME Infrastructure AI", // Sesuai nama proyek [cite: 1]
      debugShowCheckedModeBanner: false,

      // 🔥 Start dari Splash Screen [cite: 49]
      initialRoute: AppPages.INITIAL,

      // 🔥 Semua Route yang sudah didefinisikan
      getPages: AppPages.routes,

      // 🔥 Fallback jika rute tidak ditemukan
=======
      title: "Smart SME App",
      debugShowCheckedModeBanner: false,

      // 🔥 start dari splash
      initialRoute: AppPages.INITIAL,

      // 🔥 semua route
      getPages: AppPages.routes,

      // 🔥 fallback kalau salah route
>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const Scaffold(
          body: Center(
<<<<<<< HEAD
            child: Text("404 - Halaman Tidak Ditemukan"),
=======
            child: Text("404 - Page Not Found"),
>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709
          ),
        ),
      ),

<<<<<<< HEAD
      // 🔥 Tema Dasar Aplikasi
      // Menggunakan Material 3 sesuai standar pengembangan mobile modern [cite: 42, 52]
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
=======
      // 🔥 theme dasar
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709
      ),
    );
  }
}