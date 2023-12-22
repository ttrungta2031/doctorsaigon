import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/data/models/responsive_size.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';

class w_phanthuong_phai extends StatelessWidget {
  const w_phanthuong_phai({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .36,
      smallScreenSize: context.width * .26,
    );
    return Container(
      //width: _getFormWidth(context.width),
      height: responsiveSize.getSize(),
      //color: Colors.blue,
      child: Image.asset(
        AppAssets.bacsitainha01,
        width: responsiveSize.getSize(),
        height: responsiveSize.getSize(),
        color: Color.fromARGB(0, 54, 54, 52).withOpacity(0.5),
        colorBlendMode: BlendMode.colorDodge,
      ),
    );
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
