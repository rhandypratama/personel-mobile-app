import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:personel/personel.dart';
import 'package:personel/utils/network-provider.dart';
import 'package:personel/utils/splash.dart';
import 'package:provider/provider.dart';
// import 'package:personel/utils/splash.dart';

void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MyApp());
  });
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider<ProfileProvider>.value(value: ProfileProvider()),
        // ChangeNotifierProvider<TemplateMsgProvider>.value(value: TemplateMsgProvider()),
        // ChangeNotifierProvider<SocketProvider>.value(value: SocketProvider()),
        // ChangeNotifierProvider<CatalogProvider>.value(value: CatalogProvider()),
        // StreamProvider<dynamic>.value(value: SocketStreamProvider().getDataSocket(), initialData: SocketStreamProvider().socketData,)
        StreamProvider<ConnectivityResult>.value(value: NetworkProvider().netwokStatusController.stream),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: themeData,
        // navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
        home: SplashScreen(),
      ),
    );
    // );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: SplashScreen(),
    //   // home: Personel(),
      
    // );
  }
}