import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';
final GlobalKey<NavigatorState> navigatorKey =
GlobalKey<NavigatorState>();
 get getContext => navigatorKey.currentState?.context;

Future<T?> pushRoute<T>(
  String route, {
  bool isNewTask = false,
  bool isToReplace = false,
  String? exceptRoute,
  Map<String, dynamic>? arguments,
}) async {
  if (isNewTask) {
    return await Navigator.pushNamedAndRemoveUntil(
        getContext,
        route,
        exceptRoute.isNotNull
            ? ModalRoute.withName(exceptRoute!)
            : (route) => false,
        arguments: arguments);
  } else if (isToReplace) {
    return await Navigator.pushReplacementNamed(getContext, route,
        arguments: arguments);
  } else {
    return await Navigator.pushNamed(getContext, route,
        arguments: arguments);
  }
}

/// Dispose current screens or close current dialog
void pop([Object? object]) {
  if (Navigator.canPop(getContext))
    Navigator.pop(getContext, object);
}

