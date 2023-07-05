import 'dart:typed_data';

import 'package:camera/camera.dart';

Float32List convertYUV420ToFloat32List(CameraImage image) {
  final int width = image.width;
  final int height = image.height;

  final int uvRowStride = image.planes[1].bytesPerRow;
  final int uvPixelStride = image.planes[1].bytesPerPixel!;

  final Float32List imageData = Float32List(48 * 48);

  int idx = 0;
  for (int y = 0; y < height; y++) {
    final int uvRowIndex = uvRowStride * (y >> 1);
    final int pixelRowIndex = width * y;

    for (int x = 0; x < width; x++) {
      final int uvIndex =
          uvRowIndex + uvPixelStride * (x >> 1) + (y & 1) * uvRowStride;

      final yp = image.planes[0].bytes[pixelRowIndex + x];
      final up = image.planes[1].bytes[uvIndex];
      final vp = image.planes[2].bytes[uvIndex];

      // Calculate the grayscale color using the Y channel
      final gray = (0.299 * yp + 0.587 * up + 0.114 * vp);

      // Normalize pixel values to be between -1 and 1
      final normalizedValue = (gray - 128) / 128;

      imageData[idx++] = normalizedValue;
    }
  }

  return imageData;
}
