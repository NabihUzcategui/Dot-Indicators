import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pages/pages.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: SwapEffect(
              activeDotColor: Colors.grey.shade800,
              dotColor: Colors.grey.shade300,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
            ),
          ),
        ],
      ),
    );
  }
}
