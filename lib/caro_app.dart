import 'package:caro_user_app/core/export/export.dart';
import 'package:easy_localization/easy_localization.dart';

class CaroApp extends StatelessWidget {
  const CaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAppTheme(context),
      debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      navigatorKey: navigatorKey,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      // home: NavbarPage(),
    );
  }
}
