import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/router/router.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> PageProvider())
      ],
      child: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }                 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive LandingPage',
      onGenerateRoute: Flurorouter.router.generator,
      initialRoute: '/home',
    );
  }
}
