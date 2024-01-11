import 'package:flutter/material.dart';

class ExplicitAnimationChallengeScreen extends StatefulWidget {
  const ExplicitAnimationChallengeScreen({super.key});

  @override
  State<ExplicitAnimationChallengeScreen> createState() =>
      _ExplicitAnimationChallengeScreenState();
}

class _ExplicitAnimationChallengeScreenState
    extends State<ExplicitAnimationChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Explicit Animation Challenge"),
      ),
      body: const Text("HI"),
    );
  }
}
