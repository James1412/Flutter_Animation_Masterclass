import 'package:flutter/material.dart';

class ImplicitAnimationsScreen extends StatefulWidget {
  const ImplicitAnimationsScreen({super.key});

  @override
  State<ImplicitAnimationsScreen> createState() =>
      _ImplicitAnimationsScreenState();
}

class _ImplicitAnimationsScreenState extends State<ImplicitAnimationsScreen> {
  bool _visible = true;

  void _trigger() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: ColorTween(
                begin: Colors.blue,
                end: Colors.red,
              ),
              duration: const Duration(seconds: 2),
              curve: Curves.bounceInOut,
              builder: (context, value, child) {
                return FittedBox(
                  child: Image.network(
                    "https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png",
                    color: value,
                    width: size.width * 3,
                    height: size.height * 1.5,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: _trigger,
              child: const Text("Go"),
            ),
          ],
        ),
      ),
    );
  }
}
