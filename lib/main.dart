import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nekidaem_test/data/server_api/models/user_model.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import 'screens/auth/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserApp>(
      create: (context) => UserApp(),
      child: MaterialApp(
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          title: 'NeKidaem',
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale('en'),
          supportedLocales: [
            Locale('en', ''),
            Locale('ru', ''),
          ],
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AuthScreen()),
    );
    // routes: {
    //   '/auth': (context) =>
    //        AuthProvider(model: AuthModel(), child: AuthScreen()),
    // });
  }
}
