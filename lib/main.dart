import 'package:flutter/material.dart';
import 'package:flutter_pratice/views/practice/ads/ui_page.dart';
import 'package:flutter_pratice/views/screens/disbale_screenshot_screenrecording.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await MobileAds.instance.initialize();


 // var device = [""];
  // RequestConfiguration requestConfiguration = RequestConfiguration(testDeviceIds:device);
  // MobileAds.instance.updateRequestConfiguration(requestConfiguration);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"/ads_page" ,
      getPages: [
        GetPage(name: '/', page: () => const Disable_Ss_Sr(),),
        GetPage(name: '/ads_page', page: () => const ads_page(),),
      ],
    ),
  );
}

// import 'package:flutter/material.dart';
//
// void main(){
//
//   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//   runApp(
//        MaterialApp(
//         // title: 'My Flutter App',// App title Provide
//         theme: ThemeData(
//           primaryColor: Colors.red,
//           fontFamily: 'Roboto',
//         ),
//         debugShowCheckedModeBanner: false,
//         home: MyApp(),  //provide content in this page
//          // routes: {
//          //   // '/': (context) => MyApp(),
//          //   // '/details': (context) => DetailsScreen(),
//          // }, // in a multiple page handle using routes
//
//          // onGenerateRoute: (settings) {
//          //   if (settings.name == '/custom') {
//          //     return MaterialPageRoute(builder: (context) => MyApp());
//          //   }
//          // },  //provide dynamic navigation
//          // navigatorKey: navigatorKey,
//          // navigatorObservers: [],// Aap navigator par events observe karne ke liye observers add kar sakte hain.
//          // builder: (context, widget) {
//          //   // Perform initializations here   //builder: Aap builder property ka use karke MaterialApp ke neeche ek widget tree build kar sakte hain. Yeh useful hota hai agar aap initializations karna chahte hain ya runtime environment setup karna chahte hain.
//          //   // return AppBar();
//          // },
//
//          // onGenerateTitle: (context) => 'My App - ${DateTime.now()}',//Agar aap title ko dynamic tarike se generate karna chahte hain, to aap onGenerateTitle ka use kar sakte hain.
//          // color: Colors.purple,//Aap color property se app ke primary color ko set kar sakte hain, jo app ke widgets ke liye default color hoga.
//          //  locale: Locale('hi', 'IN'),//Agar aap app ke locale ko control karna chahte hain, to locale property ka use karke usse set kar sakte hain.
//          // scrollBehavior: MyScrollBehavior(),//customize scroll behvaiour
//          // checkerboardOffscreenLayers: true,//checkerboardOffscreenLayers: Similar to checkerboardRasterCacheImages, this property adds a checkerboard pattern to offscreen layers for debugging purposes.
//          // checkerboardRasterCacheImages: true,//checkerboardRasterCacheImages: If set to true, this property displays a checkerboard pattern over images that are being rasterized in the cache. This can help identify image rendering performance issues.
//          //   showPerformanceOverlay: true //showPerformanceOverlay: If set to true, a performance overlay will be displayed. This overlay shows various metrics related to the app's performance.
//
//        ),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         alignment: Alignment.center,
//         child: const Text("Material App"),
//       ),
//     );
//   }
// }
