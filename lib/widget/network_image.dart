import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetworkAvatar extends StatelessWidget {
  final String? imageUrl;
  final double radius;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? iconSize;
  final IconData fallbackIcon;
  final BoxFit fit;
  final double strokeWidth;

  const NetworkAvatar({
    super.key,
    this.imageUrl,
    this.radius = 16,
    this.backgroundColor,
    this.iconColor,
    this.iconSize,
    this.fallbackIcon = Icons.person,
    this.fit = BoxFit.cover,
    this.strokeWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundColor: backgroundColor ?? Colors.grey[300],
      child: ClipOval(
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? Image.network(
                imageUrl!,
                width: (radius * 2).r, // diameter = radius * 2
                height: (radius * 2).r,
                fit: fit,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return CircularProgressIndicator(
                    strokeWidth: strokeWidth,
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    fallbackIcon,
                    color: iconColor ?? Colors.grey[600],
                    size: iconSize?.sp ?? (radius * 0.6).sp,
                  );
                },
              )
            : Icon(
                fallbackIcon,
                color: iconColor ?? Colors.grey[600],
                size: iconSize?.sp ?? (radius * 0.6).sp,
              ),
      ),
    );
  }
}
