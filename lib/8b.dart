import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  late Animation<double> fadeAnimation;
  late Animation<double> scaleAnimation;
  late Animation<double> rotationAnimation;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ),
    );

    scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticOut,
      ),
    );

    rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutBack,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void startAnimation() {
    controller.forward(from: 0.0);
  }

  void reverseAnimation() {
    controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color(0xFFF4F0FF),

        appBar: AppBar(
          title: const Text(
            "24WH1A05L7",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          centerTitle: true,

          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Text(
                "24WH1A05L7",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Multiple Explicit Animations",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),

              FadeTransition(
                opacity: fadeAnimation,

                child: SlideTransition(
                  position: slideAnimation,

                  child: ScaleTransition(
                    scale: scaleAnimation,

                    child: RotationTransition(
                      turns: rotationAnimation,

                      child: Container(
                        width: 190,
                        height: 190,

                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.deepPurple,
                              Colors.blueAccent,
                            ],
                          ),

                          borderRadius: BorderRadius.circular(30),

                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 3,
                              offset: Offset(0, 8),
                              color: Colors.black26,
                            ),
                          ],
                        ),

                        child: const Center(
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,

                            children: [
                              Icon(
                                Icons.flutter_dash,
                                size: 60,
                                color: Colors.white,
                              ),

                              SizedBox(height: 10),

                              Text(
                                "KUMUDWINI",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "24WH1A05L7",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 45),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton.icon(
                    onPressed: startAnimation,

                    icon: const Icon(Icons.play_arrow),

                    label: const Text("Play"),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,

                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 14,
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  ElevatedButton.icon(
                    onPressed: reverseAnimation,

                    icon: const Icon(Icons.undo),

                    label: const Text("Reverse"),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,

                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 14,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Text(
                "Fade • Slide • Scale • Rotate",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}