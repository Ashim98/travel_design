import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel/homepage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _busAnimation;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _busAnimation = Tween<double>(begin: -1, end: 1).animate(_animationController);
    _animationController.forward();
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // AnimatedBuilder(
              //   animation: _animationController,
              //   child: Transform.rotate(
              //     angle: _animation.value,
              //     child: const CircularProgressIndicator(),
              //   ),
              //   builder: (context, child) {
              //     return child!;
              //   },
              // ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _animationController,
                child: Image.asset('assets/images/bus.png',
                width: 200,
                ),
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_busAnimation.value * 100, 0),
                    child: child,
                  );
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Loading...',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff191818)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}