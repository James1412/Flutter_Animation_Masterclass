import 'package:flutter/material.dart';
import 'package:flutter_animations_masterclass/screens/implicit_animation_challenge_screen.dart';
import 'package:flutter_animations_masterclass/screens/implicit_animations_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void _goToPage(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => screen,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animations"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () => _goToPage(
              context,
              const ImplicitAnimationsScreen(),
            ),
            child: const Text("Implicit Animations"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () => _goToPage(
              context,
              const ImplicitAnimationChallengeScreen(),
            ),
            child: const Text("Implicit Animations Challenge"),
          ),
        ],
      )),
    );
  }
}
