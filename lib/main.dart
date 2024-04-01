import 'package:flutter/material.dart';
import 'package:image_comparison/backbone/di.dart' as di;
import 'package:image_comparison/presentation/page/image_comparison_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    const MaterialApp(home: ImageComparisonPage()),
  );
}
