#!/bin/bash
echo "starting the build process"

echo "generating flutter_brand_icons.dart file"
dart ./tool/generate_fonts.dart ./fonts/fonts_config.json

echo "formatting flutter_brand_icons.dart file"
dartfmt -w lib/flutter_brand_icons.dart

echo "building the icons_list in examples/lib directory"
dart ./tool/generate_example_icons_list.dart ./fonts/fonts_config.json

echo "formatting the icons_list"
dartfmt -w example/lib/icons_list.dart

echo "build process completed successfully"
