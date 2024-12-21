import 'package:flutter/material.dart';
import 'package:page_transition_animation/custom_page_route.dart';
import 'package:page_transition_animation/pages/dummy.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 10.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            // slide animations
            Column(
              children: [
                // up
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        page: Dummy(),
                        animationType: "slide",
                        direction: AxisDirection.up,
                      ),
                    );
                  },
                  icon: Icon(Icons.arrow_circle_up_outlined),
                ),

                // left and right
                Row(
                  spacing: 32.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // right
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CustomPageRoute(
                            page: Dummy(),
                            animationType: "slide",
                            direction: AxisDirection.right,
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_circle_right_outlined),
                    ),

                    // left
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CustomPageRoute(
                            page: Dummy(),
                            animationType: "slide",
                            direction: AxisDirection.left,
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_circle_left_outlined),
                    ),
                  ],
                ),

                // down
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        page: Dummy(),
                        animationType: "slide",
                        direction: AxisDirection.down,
                      ),
                    );
                  },
                  icon: Icon(Icons.arrow_circle_down_outlined),
                ),

                const SizedBox(height: 8.0),
                const Text("Slide Animations"),
              ],
            ),

            //   scaled animation
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CustomPageRoute(page: Dummy(), animationType: "scale"),
                );
              },
              child: const Text("Scale"),
            ),

            //   seamless animation
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CustomPageRoute(
                    page: Dummy(),
                  ),
                );
              },
              child: const Text("Seamless"),
            ),
          ],
        ),
      ),
    );
  }
}
