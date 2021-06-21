import 'package:demo_locale/generated/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:demo_locale/generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en', 'IN'),
        Locale('hi', 'IN'),
        Locale('gu', 'IN'),
      ],
      path: 'lib/assets/translations',
      fallbackLocale: Locale('en', 'IN'),
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.my_name_is_nisarg.tr()),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Text('${LocaleKeys.my_name_is_nisarg.tr()}'),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      await context.setLocale(
                        Locale('gu', 'IN'),
                      );
                    },
                    child: Text("Gujrati"),
                  ),
                  FlatButton(
                    onPressed: () async {
                      await context.setLocale(
                        Locale('hi', 'IN'),
                      );
                    },
                    child: Text("Hindi"),
                  ),
                  FlatButton(
                    onPressed: () async {
                      await context.setLocale(
                        Locale('en', 'IN'),
                      );
                    },
                    child: Text("English"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//This is for git trial
