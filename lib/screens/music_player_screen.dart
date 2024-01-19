import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/${index + 1}.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    "5cm/second",
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Shinkai Makoto",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
