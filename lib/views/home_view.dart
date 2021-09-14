import 'package:flutter/material.dart';
import 'package:flutter_app/animations/bottom_animation.dart';
import 'package:flutter_app/animations/entrance_fader.dart';
import 'package:flutter_app/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _packages = [
    "- provider: ^6.0.0",
    "- http: ^0.13.3",
    "- shared_preferences: ^2.0.7",
    "- flutter_svg: ^0.22.0",
  ];

  final _structure = [
    "- assets/",
    "- lib/animations",
    "- lib/controller",
    "- lib/model",
    "- lib/views",
    "- lib/widgets",
    "- constants.dart",
  ];

  final _maindart = [
    "- WidgetsFlutterBinding.ensureInitialized();",
    "- debugShowCheckedModeBanner: false",
    "- initialRoute: '/'",
    "- routes: {",
    " '/ ' : (context) => const HomeView(),",
    " },",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const FlutterLogo(
                  size: 100.0,
                ),
                const SizedBox(height: 15.0),
                Center(
                  child: EntranceFader(
                    offset: const Offset(0, 20.0),
                    duration: const Duration(seconds: 2),
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Flutter ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 38.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: "Template!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 38.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                const Divider(
                  height: 40.0,
                ),
                const Text(
                  "main.dart",
                  style: kHeadingStyle,
                ),
                for (int i = 0; i < _maindart.length; i++)
                  WidgetAnimator(
                    child: Text(
                      _maindart[i],
                      style: const TextStyle(height: 2.0, fontSize: 16.0),
                    ),
                  ),
                const SizedBox(height: 30.0),
                const Text(
                  "Project Structure",
                  style: kHeadingStyle,
                ),
                for (int i = 0; i < _structure.length; i++)
                  WidgetAnimator(
                    child: Text(
                      _structure[i],
                      style: const TextStyle(height: 2.0, fontSize: 16.0),
                    ),
                  ),
                const SizedBox(height: 30.0),
                const Text(
                  "Packages",
                  style: kHeadingStyle,
                ),
                for (int i = 0; i < _packages.length; i++)
                  WidgetAnimator(
                    child: Text(
                      _packages[i],
                      style: const TextStyle(height: 2.0, fontSize: 16.0),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
