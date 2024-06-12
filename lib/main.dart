import 'package:flutter/material.dart';
import 'package:flutter_animations/widgets/animated_color.dart';
import 'package:flutter_animations/widgets/cube_animation.dart';
import 'package:flutter_animations/widgets/custom_animated_container.dart';
import 'package:flutter_animations/widgets/custom_drawer_animation.dart';
import 'package:flutter_animations/widgets/custom_polygon.dart';
import 'package:flutter_animations/widgets/half_circle_fliping.dart';
import 'package:flutter_animations/widgets/hero_Animation.dart';
import 'package:flutter_animations/widgets/rotating_squer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<Widget> animationWidgets = [
    const RotatingSquer(),
    const HalfCircleFliping(),
    const CubeAnimation(),
    const HeroAnimation(),
    const CustomAnimatedContainer(),
    const AnimatedColor(),
    const CustomPolygon(),
    const CustomDrawerAnimation(),
  ];

  void showNextAnimation() {
    setState(() {
      if (index < animationWidgets.length - 1) {
        index++;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: animationWidgets[index],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showNextAnimation,
        child: const Icon(Icons.next_plan),
      ),
    );
  }
}
