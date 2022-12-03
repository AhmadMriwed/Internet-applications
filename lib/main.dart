import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/controller/provider/test_provider.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:untitled/view/screens/auth/logIn.dart';
import 'controller/provider/auth_provider.dart';
import 'controller/bottom_nav_bar_provider.dart';
import 'controller/text_filed_provider.dart';
import 'model/utils/local/change_theme.dart';
void main()async{
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppProvider appProvider = new AppProvider();
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        Provider<TextFiledProvider>(create: (_)=>TextFiledProvider()),
        Provider<BottomNavBarProvider>(create: (_)=>BottomNavBarProvider()),
        Provider<AuthProvider>(create: (_)=>AuthProvider()),
        Provider<TestProvider>(create: (_)=>TestProvider()),

      ],
      child: ChangeNotifierProvider<AppProvider>.value(
          value: appProvider,
          child:Consumer<AppProvider>(
              builder: (c, value, child) {
                print(appProvider.darkTheme);
                return GetMaterialApp(
                  title: "تطبيقات الانترنت",
                  debugShowCheckedModeBanner: false,
                  home: login(),//SplashView(),
                  theme: ThemeData(
                    primarySwatch: Colors.blueGrey,
                    primaryColorDark: Colors.blueGrey.shade800,
                    backgroundColor: Colors.blueGrey.shade50,
                  ),
                 // theme: getApplicationTheme(isDark: appProvider.darkTheme),
                );
              })
      ),);

  }
}
