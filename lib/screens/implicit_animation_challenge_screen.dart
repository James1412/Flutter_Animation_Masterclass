import 'package:flutter/material.dart';

class ImplicitAnimationChallengeScreen extends StatefulWidget {
  const ImplicitAnimationChallengeScreen({super.key});

  @override
  State<ImplicitAnimationChallengeScreen> createState() =>
      _ImplicitAnimationChallengeScreenState();
}

class _ImplicitAnimationChallengeScreenState
    extends State<ImplicitAnimationChallengeScreen> {
  bool reachedEnd = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animation Challenge"),
      ),
      body: Container(
        color: reachedEnd ? Colors.black : Colors.grey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: size.width * 0.6,
                height: size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(reachedEnd ? 0 : 150),
                ),
                child: AnimatedAlign(
                  duration: const Duration(seconds: 1),
                  alignment:
                      reachedEnd ? Alignment.centerLeft : Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.04,
                    height: size.width * 0.6,
                    color: reachedEnd ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  reachedEnd = !reachedEnd;
                });
              },
              child: const Text("Go"),
            ),
          ],
        ),
      ),
    );
  }
}
