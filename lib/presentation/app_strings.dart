class AppStrings {
  static const orientation = 'Orientation';
  static const comparisonResult = 'Comparison result: ';
  static const creationDate = 'Creation date';
  static const imageSize = 'Image size';
  static const uploadImage = 'Upload image';
  static const clear = 'Clear';
  static String getImageComparisonStatus({required bool isIdentical}) {
    return isIdentical ? 'Identical' : 'Different';
  }
}
