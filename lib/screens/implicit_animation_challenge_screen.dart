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
  var start = Alignment.centerLeft;
  var end = Alignment.centerRight;

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
                child: TweenAnimationBuilder(
                  tween: AlignmentTween(begin: start, end: end),
                  duration: const Duration(seconds: 1),
                  builder: (context, value, child) => Align(
                    alignment: value,
                    child: Container(
                      width: size.width * 0.04,
                      height: size.width * 0.6,
                      color: reachedEnd ? Colors.white : Colors.black,
                    ),
                  ),
                  onEnd: () {
                    setState(() {
                      reachedEnd = !reachedEnd;
                      if (end == Alignment.centerLeft) {
                        end = Alignment.centerRight;
                      } else {
                        end = Alignment.centerLeft;
                      }
                      if (start == Alignment.centerRight) {
                        start = Alignment.centerLeft;
                      } else {
                        start = Alignment.centerRight;
                      }
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
