import 'package:flutter/material.dart';

final class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.imageUrl});

  final String imageUrl;

  static Route<void> route(String imageUrl) {
    return MaterialPageRoute<void>(builder: (_) => ImageView(imageUrl: imageUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Hero(
          tag: imageUrl,
          child: InteractiveViewer(
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
