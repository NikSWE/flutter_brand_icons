library flutter_brand_icons;

import "package:flutter/widgets.dart";

class BrandIconData extends IconData {
  const BrandIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: "BrandIcons",
          fontPackage: "flutter_brand_icons",
        );
}
