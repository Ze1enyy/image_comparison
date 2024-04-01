import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_comparison/data/gateway/image_comparison_gateway.dart';

void main() {
  group('ImageComparisonGateway', () {
    final gateway = ImageComparisonGateway();

    test('Identical images should return true', () {
      final imageBytes = Uint8List.fromList([1, 2, 3, 4]);
      expect(
        gateway.areImagesIdentical(
          firstImageBytes: imageBytes,
          secondImageBytes: imageBytes,
        ),
        true,
      );
    });

    test('Different lengths should return false', () {
      final firstImageBytes = Uint8List.fromList([1, 2, 3, 4]);
      final secondImageBytes = Uint8List.fromList([1, 2, 3]);
      expect(
        gateway.areImagesIdentical(
          firstImageBytes: firstImageBytes,
          secondImageBytes: secondImageBytes,
        ),
        false,
      );
    });

    test('Different images should return false', () {
      final firstImageBytes = Uint8List.fromList([1, 2, 3, 4]);
      final secondImageBytes = Uint8List.fromList([1, 2, 5, 4]);
      expect(
        gateway.areImagesIdentical(
          firstImageBytes: firstImageBytes,
          secondImageBytes: secondImageBytes,
        ),
        false,
      );
    });
  });
}
