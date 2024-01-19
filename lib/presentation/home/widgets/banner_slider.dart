import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';

class BannerSlider extends StatefulWidget {
  final List<String> items;
  const BannerSlider({super.key, required this.items});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.items
              .map((e) => Image.asset(
                    e,
                    height: 206.0,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ))
              .toList(),
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 315 / 152,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              _current = index;
              setState(() {});
            },
          ),
        ),
        const SpaceHeight(22.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 20.0 : 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? AppColors.grey
                            : AppColors.primary)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
