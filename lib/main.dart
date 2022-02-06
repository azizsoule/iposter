import 'package:djamo_todo_app/src/config/routes/routes.dart';
import 'package:djamo_todo_app/src/core/utils/constants.dart';
import 'package:djamo_todo_app/src/injector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencies();
  runApp(const IPoster());
}

class IPoster extends StatelessWidget {
  const IPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IPoster',
      getPages: kPages,
      initialRoute: kInitialRoute,
    );
  }
}
