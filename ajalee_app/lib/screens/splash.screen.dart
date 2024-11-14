import 'package:flutter/material.dart';
import 'package:ajalee_app/screens/home_page.screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _carSlideAnimation;
  late Animation<double> _carScaleAnimation;
  late Animation<double> _carRotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    // Opacity Animation for the text and logo
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Car Slide Animation
    _carSlideAnimation = Tween<Offset>(
            begin: Offset(-1.5, 0.0), end: Offset(1.5, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Car Scaling Animation
    _carScaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Car Rotation Animation (makes it appear like a slight turn)
    _carRotationAnimation = Tween<double>(begin: -0.05, end: 0.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 80),
                const SizedBox(height: 10),
                const Text(
                  'Rent Your Car with Ease',
                  style: TextStyle(fontSize: 20, color: Colors.white54),
                ),
                const SizedBox(height: 30),

                // Animated Car with Slide, Scale, and Rotation
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return SlideTransition(
                      position: _carSlideAnimation,
                      child: Transform.scale(
                        scale: _carScaleAnimation.value,
                        child: Transform.rotate(
                          angle: _carRotationAnimation.value,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/splash.car.png'))),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
