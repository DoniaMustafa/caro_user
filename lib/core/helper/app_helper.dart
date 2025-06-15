import 'package:caro_user_app/core/export/export.dart';


Map<String, dynamic>? getArguments(BuildContext context) =>
    (ModalRoute.of(context))!.settings.arguments as Map<String, dynamic>?;

