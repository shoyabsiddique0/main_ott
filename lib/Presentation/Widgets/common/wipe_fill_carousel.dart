import 'package:flutter/material.dart';

class OverlappingCarousel extends StatefulWidget {
  final List<Widget> items;
  final Duration animationDuration;

  OverlappingCarousel({
    required this.items,
    this.animationDuration = const Duration(milliseconds: 500),
  });

  @override
  _OverlappingCarouselState createState() => _OverlappingCarouselState();
}

class _OverlappingCarouselState extends State<OverlappingCarousel>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController =
        AnimationController(vsync: this, duration: widget.animationDuration);
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            return widget.items[index];
          },
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(
                  _animation.value * MediaQuery.of(context).size.width, 0),
              child: ClipRect(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    return widget.items[index];
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
