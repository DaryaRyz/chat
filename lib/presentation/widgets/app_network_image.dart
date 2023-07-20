import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  final String? url;
  final double width;
  final double height;
  final BorderRadius? borderRadius;

  const AppNetworkImage(
    this.url, {
    Key? key,
    required this.width,
    required this.height,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url != null) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: Image.network(
          url!,
          width: width,
          height: height,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return SizedBox(
              width: width,
              height: height,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          errorBuilder: (_, __, ___) {
            return Container(
              width: width,
              height: height,
              color: ColorStyles.mainItemsColor,
              child: const Center(
                child: Icon(
                  Icons.image,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      );
    }
    return const SizedBox();
  }
}
