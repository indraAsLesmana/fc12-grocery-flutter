import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatefulWidget {
  final List<String> items;
  const ProductSlider({super.key, required this.items});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final total = widget.items.length;
    return Stack(
      alignment: Alignment.bottomLeft,
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
            aspectRatio: 325 / 300,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              _current = index;
              setState(() {});
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '${_current + 1}/$total Foto',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
