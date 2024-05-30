import 'package:flutter/material.dart';

class ImageViaLink extends StatelessWidget {
  var Ilink;

  ImageViaLink({
    required this.Ilink,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        Ilink,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                    : null,
              ),
            );
          }
        },
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Text('Failed to load image');
        },
      ),
    );
  }
}
