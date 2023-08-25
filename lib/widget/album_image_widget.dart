import 'package:flutter/material.dart';

class AlbumImageWidget extends StatelessWidget {
  const AlbumImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 400,
      color: Colors.red,
      child: Image.network(
        'https://pbs.twimg.com/profile_images/760193594233876480/9atNXFjG_400x400.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
